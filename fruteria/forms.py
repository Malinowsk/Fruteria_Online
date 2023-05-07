from django import forms

class PurchaseCartFormulario(forms.Form):
    quantity = forms.IntegerField(widget = forms.HiddenInput(),initial=1, required=True) 

