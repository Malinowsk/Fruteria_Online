from django import forms

class PurchaseCartform(forms.Form):
    quantity = forms.IntegerField(widget = forms.HiddenInput(),initial=1, required=True) 

