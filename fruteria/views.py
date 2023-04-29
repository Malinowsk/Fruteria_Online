from django.shortcuts import render


# presentar_home , mostrar_catalogo , mostrar_contacto , mostrar_about


def presentar_home(request):
    contexto = {}
    http_responde = render(
        request=request,
        template_name='fruteria/home.html',
        context=contexto,
    )
    return http_responde

def presentar_catalogo(request):
    contexto = {}
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

