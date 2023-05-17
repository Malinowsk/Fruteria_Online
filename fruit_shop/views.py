from django.shortcuts import render, redirect
from django.urls import reverse
from django.contrib import messages
from fruit_shop.models import Fruit , PurchaseCart
from fruit_shop.forms import PurchaseCartform
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
import random
import string

def show_home(request):
    context = {}
    print(request.user.is_authenticated)
    if are_user_authenticated(request):
        context["num_cart"] = get_cart_num(request)
    http_response = render(
        request=request,
        template_name='fruit_shop/home.html',
        context=context,
    )
    return http_response

def show_catalog(request):
    fruits = Fruit.objects.all()
    context = {"fruits": fruits}
    if  are_user_authenticated(request):
        context["num_cart"] = get_cart_num(request)
    http_response = render(
        request=request,
        template_name='fruit_shop/catalog.html',
        context=context,
    )
    return http_response


def show_contact(request):
    context = {}
    if  are_user_authenticated(request):
        context["num_cart"] = get_cart_num(request)
    http_response = render(
        request=request,
        template_name='fruit_shop/contact.html',
        context=context,
    )
    return http_response


def show_about(request):
    context = {}
    if  are_user_authenticated(request):
        context["num_cart"] = get_cart_num(request)
    http_response = render(
        request=request,
        template_name='fruit_shop/about.html',
        context=context,
    )
    return http_response


def show_detail(request, id):
    form =  PurchaseCartform()
    fruit = Fruit.objects.get(id = id)
    attribute_url= request.path.split('/')[1]
    context = {"fruit": fruit, "form":form, "attribute_url":attribute_url}
    if attribute_url == 'cart':
        quantity = PurchaseCart.objects.get(fruit=fruit, user= request.user, state = "en_carrito").quantity
        context["quantity"] = quantity
    if  are_user_authenticated(request):
        context["num_cart"] = get_cart_num(request)
    http_response = render(
        request=request,
        template_name='fruit_shop/detalle.html',
        context=context,
    )
    return http_response

@login_required
def show_mensaje(request):
    context = {}
    context["num_cart"] = get_cart_num(request)
    http_response = render(
        request=request,
        template_name='fruit_shop/mensaje.html',
        context=context,
    )
    return http_response


@login_required
def add_fruit(request,fruit_id):
    if request.method == "POST":
        form = PurchaseCartform(request.POST)
        if form.is_valid():
            fruit = Fruit.objects.get(id=fruit_id)
            if not PurchaseCart.objects.filter(user=request.user,fruit=fruit,state="en_carrito").exists(): 
                data = form.cleaned_data  # es un diccionario
                quantity = data["quantity"]
                purchase_cart = PurchaseCart(fruit=fruit, user= request.user, quantity=quantity , state = "en_carrito")  # lo crean solo en RAM
                purchase_cart.save()  # Lo guardan en la Base de datos
                context={}
                context["num_cart"] = get_cart_num(request)
                http_response = render(
                    request=request,
                    template_name='fruit_shop/mensaje.html',
                    context=context,
                )
                return http_response
            else:
                messages.error(request, "Ya posee en su carrito esta fruit, puede ingresar al carrito para modificar la cantidad de kg que desea comprar.", extra_tags='tag1')
                url_failed = reverse('detail', args=[fruit_id]) 
                return redirect(url_failed)
    else:
        messages.error(request, "No se pudo agregar la fruit al carrito de compras, vuelva intentarlo por favor..", extra_tags='tag1')
        url_failed = reverse('detail', args=[fruit_id]) 
        return redirect(url_failed)  
        
@login_required
def show_cart(request):
    cart = PurchaseCart.objects.filter(user= request.user, state="en_carrito")
    total = sum([fruit.fruit.price*fruit.quantity for fruit in cart])
    context = {"cart": cart, "total": total}
    context["num_cart"] = get_cart_num(request)
    http_response = render(
        request=request,
        template_name='fruit_shop/cart.html',
        context=context,
    )
    return http_response

@login_required
def delete_fruit(request, fruit_id):
    if request.method == "POST":
        fruit = Fruit.objects.get(id=fruit_id)
        cart_fruit = PurchaseCart.objects.get(fruit=fruit, user= request.user, state = "en_carrito")
        cart_fruit.delete()
        url = reverse('cart') 
        return redirect(url)

@login_required
def edit_fruit(request,fruit_id):
    if request.method == "POST":
        form = PurchaseCartform(request.POST)
        if form.is_valid():
            fruit = Fruit.objects.get(id=fruit_id)
            purchase_cart = PurchaseCart.objects.get(fruit=fruit, user= request.user, state = "en_carrito")
            data = form.cleaned_data  # es un diccionario
            purchase_cart.quantity = data["quantity"]
            purchase_cart.save()  # Lo guardan en la Base de datos
            url = reverse('cart') 
            return redirect(url)

@login_required
def get_purchase(request):
    if request.method == "POST":
        purchase_cart = PurchaseCart.objects.filter(user= request.user, state = "en_carrito")
        code = ''.join(random.choices(string.ascii_uppercase + string.digits, k=15))
        for purchase in purchase_cart:
            purchase.state = "en_proceso_de_compra"
            purchase.purchase_code = code
            purchase.save()
        messages.success(request, "Su compra ha sido con éxito! Las fruits llega a su domicilio en las proxima 24 horas. Muchas gracias! ", extra_tags='tag1')
        url = reverse('catalog') 
        return redirect(url)
    

def get_cart_num(request):
    return len(PurchaseCart.objects.filter(user= request.user, state = "en_carrito"))

def are_user_authenticated(request):
    return request.user.is_authenticated