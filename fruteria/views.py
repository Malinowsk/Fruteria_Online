from django.shortcuts import render
from fruteria.models import Fruit , PurchaseCart
from fruteria.forms import PurchaseCartFormulario

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
    fruta = Fruit.objects.get(id = id)
    contexto = {"fruta": fruta, "form":formulario}
    http_responde = render(
        request=request,
        template_name='fruteria/detalle.html',
        context=contexto,
    )
    return http_responde



def presentar_mensaje(request):
    contexto = {}
    http_responde = render(
        request=request,
        template_name='fruteria/mensaje.html',
        context=contexto,
    )
    return http_responde


def add_fruit(request,fruit_id):
  
    if request.method == "POST":
        formulario = PurchaseCartFormulario(request.POST)
        if formulario.is_valid():
            data = formulario.cleaned_data  # es un diccionario
            fruit = Fruit.objects.get(id=fruit_id)
            quantity = data["quantity"]
            purchase_cart = PurchaseCart(fruit=fruit, user= request.user, quantity=quantity , state = "en_carrito")  # lo crean solo en RAM
            purchase_cart.save()  # Lo guardan en la Base de datos
            http_responde = render(
                request=request,
                template_name='fruteria/mensaje.html',
            )
            return http_responde