from django.shortcuts import render, redirect
from django.urls import reverse
from django.contrib import messages
from fruteria.models import Fruit , PurchaseCart
from fruteria.forms import PurchaseCartFormulario
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
import random
import string

def presentar_home(request):
    contexto = {}
    http_responde = render(
        request=request,
        template_name='fruteria/home.html',
        context=contexto,
    )
    return http_responde

def presentar_catalogo(request):
    frutas = Fruit.objects.all()
    contexto = {"frutas": frutas}
    http_responde = render(
        request=request,
        template_name='fruteria/catalogo.html',
        context=contexto,
    )
    return http_responde


def presentar_contacto(request):
    contexto = {}
    http_responde = render(
        request=request,
        template_name='fruteria/contacto.html',
        context=contexto,
    )
    return http_responde


def presentar_about(request):
    contexto = {}
    http_responde = render(
        request=request,
        template_name='fruteria/about.html',
        context=contexto,
    )
    return http_responde


def presentar_detail(request, id):
    formulario =  PurchaseCartFormulario()
    fruit = Fruit.objects.get(id = id)
    atributo_url= request.path.split('/')[1]
    contexto = {"fruta": fruit, "form":formulario, "atributo_url":atributo_url}
    if atributo_url == 'cart':
        quantity = PurchaseCart.objects.get(fruit=fruit, user= request.user, state = "en_carrito").quantity
        contexto["quantity"] = quantity
    http_responde = render(
        request=request,
        template_name='fruteria/detalle.html',
        context=contexto,
    )
    return http_responde

@login_required
def presentar_mensaje(request):
    contexto = {}
    http_responde = render(
        request=request,
        template_name='fruteria/mensaje.html',
        context=contexto,
    )
    return http_responde


@login_required
def add_fruit(request,fruit_id):
    if request.method == "POST":
        formulario = PurchaseCartFormulario(request.POST)
        if formulario.is_valid():
            fruit = Fruit.objects.get(id=fruit_id)
            if not PurchaseCart.objects.filter(user=request.user,fruit=fruit,state="en_carrito").exists(): 
                data = formulario.cleaned_data  # es un diccionario
                quantity = data["quantity"]
                purchase_cart = PurchaseCart(fruit=fruit, user= request.user, quantity=quantity , state = "en_carrito")  # lo crean solo en RAM
                purchase_cart.save()  # Lo guardan en la Base de datos
                http_responde = render(
                    request=request,
                    template_name='fruteria/mensaje.html',
                )
                return http_responde
            else:
                messages.error(request, "Ya posee en su carrito esta fruta, puede ingresar al carrito para modificar la cantidad de kg que desea comprar.", extra_tags='tag1')
                url_fallida = reverse('detail', args=[fruit_id]) 
                return redirect(url_fallida)
    else:
        messages.error(request, "No se pudo agregar la fruta al carrito de compras, vuelva intentarlo por favor..", extra_tags='tag1')
        url_fallida = reverse('detail', args=[fruit_id]) 
        return redirect(url_fallida)  
        
@login_required
def show_cart(request):
    carrito = PurchaseCart.objects.filter(user= request.user, state="en_carrito")
    total = sum([fruta.fruit.price*fruta.quantity for fruta in carrito])
    contexto = {"carrito": carrito, "total": total}
    http_responde = render(
        request=request,
        template_name='fruteria/cart.html',
        context=contexto,
    )
    return http_responde

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
        formulario = PurchaseCartFormulario(request.POST)
        if formulario.is_valid():
            fruit = Fruit.objects.get(id=fruit_id)
            purchase_cart = PurchaseCart.objects.get(fruit=fruit, user= request.user, state = "en_carrito")
            data = formulario.cleaned_data  # es un diccionario
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
        messages.success(request, "Su compra ah sido con éxito! Las frutas llega a su domicilio en las proxima 24 horas. Muchas gracias! ", extra_tags='tag1')
        url = reverse('catalogo') 
        return redirect(url)