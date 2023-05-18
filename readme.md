[![made-with-Django](https://img.shields.io/badge/Made%20with-Django-625.svg)](https://www.djangoproject.com/)
# Pedidos de Frutas Online 🍊
El proyecto consiste en una aplicacion web para una frutería que atiende pedidos online. La cual cuenta con una sección para usuarios no registrados, en el que pueden acceder a ver información del creador, tener un contacto con la plataforma, ver las frutas que se vender. Para realizar pedidos se debe registrar con una cuenta e iniciar sesión. Una vez registrado e iniciado sesión podrá acceder a armar su carrito de frutas, eligiendo los kgs de frutas que deseen comprar. Le permite agregar, editar los kgs y eliminar frutas del carrito. El carrito indica el precio por cada fruta determinada por la cantidad de kgs que contiene y al final un precio total a pagar. Realizada la compra, se le informa cuando llegara su pedido y el carrito pasa estar listo para volver a llenarlo.
La página cuenta con una sección para registrarse, iniciar sesión, cerrar sesión y editar los datos de su perfil como nombre, apellido, email y avatar.

## Instrucciones para instalar proyecto en local
+ Instala el interprete de python en tu ordenador https://www.python.org/downloads/
+ Crea una carpeta contenedora madre
+ Abre la consola y ubicate en la carpeta madre
+ Crea y activa el ambiente virtual
    + Ejecutar el comando: ```
python -m venv NOMBRECARPETA_VENV ```

    + Ejecutar el comando: ```
NOMBRECARPETA_VENV\Scripts\activate```
 (en cmd o powershell)
+ Clona este proyecto en la carpeta madre
    + Descarga git si no lo tienes en tu ordenador https://git-scm.com/downloads
    + Ejecutar el comando: ```git clone https://github.com/Malinowsk/Tercera-Pre-Entrega-Rago.git```
    + También existe la alternativa por SSH: ```git clone git@github.com:Malinowsk/Tercera-Pre-Entrega-Rago.git```
+ Entra en la carpeta que acabas de clonar
+ Para instalar las dependencias corre este comando: ```pip install -r requirements.txt```
+ Para instalar Django corre este comando: ```pip install django```

## Instrucciones para importa la base de datos MySQL 
+ Instalar XAMP en tu ordenador https://www.apachefriends.org/es/download.html
+ Encender MySQL en XAMP (click en el boton start)
+ Encender pache en XAMP (click en el boton start)
+ Acceder a mysql http://localhost/phpmyadmin/
+ Crear una base de datos con el nombre "fruit_online" 
+ inportar en la base de datos creada, el archivo fruit_online.sql 


## Instrucciones para entrar al panel administrativo de Django
+ En consola, crear un superuser: ```python manage.py createsuperuser```
+ Acceder con user y password via: ```127.0.0.1:8000/admin```


## Instrucciones para correr el proyecto web
+ En consola, ejecutar el comando: ```python .\manage.py runserver```
+ Ingresar desde el navegador web a la url: ```127.0.0.1:8000/```

## Video Demostración
+ Link a demo: [Link a demo](https://drive.google.com/file/d/1ex05bc9jqY3rPV4MMn_Jveo87KAQxoca/view?usp=sharing)

## Deployment
+ Link al deploy: [https://malinowski.pythonanywhere.com/](https://viva-la-birra-en-coderhouse.netlify.app/) 

## Usernames:
|Nombre de usuario|contraseña     |
|-----------------|---------------|
|admin            |11222333qQ100% |
|jonny            |123456789qQ100%|


+ video youtube
+ hacer lo de test
+ pasaje funcion a class (opcional)
