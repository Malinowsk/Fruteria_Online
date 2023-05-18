from django.shortcuts import render, redirect
from django.urls import reverse, reverse_lazy
from django.contrib.auth.models import User
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth.views import LogoutView
from django.contrib.auth import login, authenticate
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import UpdateView

from profiles.forms import UserRegisterForm, MyAuthForm, UserUpdateForm, Avatarform
from fruit_shop.views import are_user_authenticated, get_cart_num
from profiles.models import Avatar


def Registration(request):
    if request.method == "POST":
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()  # Esto lo puedo usar porque es un model form
            #agregar avatar por defecto
            url_successful = reverse('home')
            return redirect(url_successful)
    else:  # GET
        form = UserRegisterForm()
    return render(
        request=request,
        template_name='profiles/Registration.html',
        context={'form': form},
    )

def login_view(request):
    next_url = request.GET.get('next')
    if request.method == "POST":
        form = MyAuthForm(request, data=request.POST)

        if form.is_valid():
            data = form.cleaned_data
            usuario = data.get('username')
            password = data.get('password')
            user = authenticate(username=usuario, password=password)
            # user puede ser un usuario o None
            if user:
                login(request=request, user=user)
                if next_url:
                    return redirect(next_url)
                url_successful = reverse('home')
                return redirect(url_successful)
    else:  # GET
        form = MyAuthForm()
    return render(
        request=request,
        template_name='profiles/login.html',
        context={'form': form},
    )


class CustomLogoutView(LoginRequiredMixin, LogoutView):
   template_name = 'profiles/logout.html'


class MiPerfilUpdateView(LoginRequiredMixin, UpdateView):
    form_class = UserUpdateForm
    success_url = reverse_lazy('home')
    template_name = 'profiles/form_profile.html'

    def get_object(self, queryset=None):
        return self.request.user
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["num_cart"] = get_cart_num(self.request)
        return context

@login_required
def add_avatar(request):
    if request.method == "POST":
        form = Avatarform(request.POST, request.FILES) # Aquí me llega toda la info del form html

        if form.is_valid():
            avatar = form.save()
            if Avatar.objects.filter(user=request.user).exists():
                avatar = Avatar.objects.get(user= request.user)
                data = form.cleaned_data  # es un diccionario
                avatar.image = data["image"]
                avatar.save()  # Lo guardan en la Base de datos
            else:
                avatar.user = request.user
                avatar.save()
            url_successful = reverse('home')
            return redirect(url_successful)
    else:  # GET
        form = Avatarform()
    context={'form': form}
    if are_user_authenticated(request):
        context["num_cart"] = get_cart_num(request)
    return render(
        request=request,
        template_name="profiles/form_avatar.html",
        context=context,
    )
