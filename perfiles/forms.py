from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib.auth.forms import AuthenticationForm



class UserRegisterForm(UserCreationForm):
    # Esto es un ModelForm


    first_name = forms.CharField(label=False,max_length=30,required=True,widget=forms.TextInput(attrs={'placeholder': 'Nombre'}))
    last_name = forms.CharField(label=False,max_length=30,required=True,widget=forms.TextInput(attrs={'placeholder': 'Apellido'}))
    username = forms.CharField(label=False,max_length=30,required=True,widget=forms.TextInput(attrs={'placeholder': 'Nombre de Usuario'}))
    email = forms.EmailField(label=False,required=True,widget=forms.EmailInput(attrs={'placeholder': 'Email'}))
    password1 = forms.CharField(label=False, widget=forms.PasswordInput(attrs={'placeholder':'Contraseña'}))
    password2 = forms.CharField(label=False, widget=forms.PasswordInput(attrs={'placeholder':'Repetir contraseña'}))


    class Meta:
       model = User
       fields = ['last_name', 'first_name', 'username', 'email', 'password1', 'password2']


class MyAuthForm(AuthenticationForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['username'].widget = forms.TextInput(attrs={'placeholder': 'Nombre de Usuario'})
        self.fields['password'].widget = forms.PasswordInput(attrs={'placeholder': 'Contraseña'})
        
        
        self.fields['username'].label = False
        self.fields['password'].label = False
