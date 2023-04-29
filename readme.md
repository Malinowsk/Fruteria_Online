* Crear una carpeta del proyecto (ejemplo: Proyecto_Django)
* Entrar dentro de la carpeta creada
* ejecutar el comando: python -m venv NOMBRECARPETA_VENV
* ejecutar el comando: NOMBRECARPETA_VENV\Scripts\activate (en cmd o powershell)
* ejecutar el comando: pip install django
* ejecutar el comando: django-admin startproject  NOMBRECARPETA_PROY
* ingresamos dentro de la carpeta creada
* creamos repositorio, agregamos archivo .gitignore y pusheamos
* configuramos base de datos postgres en setting.py (creamos bbdd en postgres)
* ejecutar el comando: pip install psycopg2 (para usar postgres)

* ejecutar el comando: django-admin startapp NOMBREDELAAPP

///////////////////////////

Comando para crear una aplicacion:

* django-admin startapp control_estudios

Comando para chequear que la migraciones se puede hacer correctamente

* python manage.py check control_estudios

Comando para generar archivo compilado necesario para la migracion 

* python manage.py makemigrations control_estudios

Se genera la migracion

* python manage.py migrate

abrir consola de python

* python manage.py shell

from control_estudios.models import Fruit , User
user_1 = User.objects.create(name="Juan",lastname="Rago",email="juanrago2015@gmail.com",password ="12345") 

////////////////////

# Proyecto Final Coder House - Python
#### Comisión: 40440
#### Alumno: Juan Ignacio Rago

## Nombre del Proyecto
Frutería Online

## Versión
1.0

## Descripción del Proyecto
Página Web destinada a usuarios que deseen comprar frutas.

A fin de navegar por las secciones de la página web, el usuario será requerido iniciar sesión o registrarse en caso de no contar con usuario o contraseña. En ambas opciones, una vez la página valide la autenticación del usuario, este será redirigido al inicio de la página web.

Los usuarios pueden realizar las siguientes accciones:
- Publicar instrumentos musicales
- Visualizar instrumentos musicales publicados, los cuales están distribuidos en las secciones "Guitarras", "Bajos", "Pedales", "Amplificadores", "Teclados" y "Otros"
- Comentar instrumentos musicales
- Editar el perfil de Usuario
- Cambiar la contraseña de Usuario
- Cerrar Sesión
- Login en caso de haber cerrado sesión

Nota: La opción de editar y eliminar instrumentos musicales solo le está permitido al autor de la publicación del instrumento.

## Tecnología Utilizada

##### Front-End
- HTML 5
- CSS 3
- Javascript ES6
- Bootstrap 5.2

##### Back-End
- Python 3.10.4
- Django 4.0

## Pruebas Realizadas

Ver archivo titulado "Pruebas Proyecto Python CH.xlsx" el cual se encuentra en el presente repositorio https://github.com/johannesgperez/ProyectoFinalMain.git

## Video Demostración

https://youtu.be/O3tgo0Txl9Q

