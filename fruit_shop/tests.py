from django.test import TestCase

from django.db import IntegrityError
from fruit_shop.models import Fruit , PurchaseCart

class CursoTests(TestCase):

    def test_creation_fruit(self):

        fruit = Fruit()
        fruit.save(name="Coco", 
                   phono = "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg" , 
                   detail = "New Jaimaiquino",
                   description = "Rico en vitamina B2, se destaca por su suavidad y dulzura",
                   price = 80.5,
                   max_quantity = 99)

        self.assertEqual(fruit.objects.count(), 1)
        self.assertEqual(fruit.name, "Coco")
        self.assertEqual(fruit.photo, "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg")
        self.assertEqual(fruit.detail, "New Jaimaiquino")
        self.assertEqual(fruit.description, "Rico en vitamina B2, se destaca por su suavidad y dulzura")
        self.assertEqual(fruit.price, 80.5)
        self.assertEqual(fruit.max_quantity, 99)

    def test_fruit_str(self):
        fruit = Fruit()
        fruit.save(name="Coco", 
                   phono = "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg" , 
                   detail = "New Jaimaiquino",
                   description = "Rico en vitamina B2, se destaca por su suavidad y dulzura",
                   price = 80.5,
                   max_quantity = 99)

        # Compruebo el str funciona como se desea
        self.assertEqual(fruit.__str__(), "Coco | New Jaimaiquino | $80.5 Kg")



class CursoTests(TestCase):

    def test_creation_fruit(self):

        fruit = Fruit()
        fruit.save(name="Coco", 
                   phono = "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg" , 
                   detail = "New Jaimaiquino",
                   description = "Rico en vitamina B2, se destaca por su suavidad y dulzura",
                   price = 80.5,
                   max_quantity = 99)

        self.assertEqual(fruit.objects.count(), 1)
        self.assertEqual(fruit.name, "Coco")
        self.assertEqual(fruit.photo, "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg")
        self.assertEqual(fruit.detail, "New Jaimaiquino")
        self.assertEqual(fruit.description, "Rico en vitamina B2, se destaca por su suavidad y dulzura")
        self.assertEqual(fruit.price, 80.5)
        self.assertEqual(fruit.max_quantity, 99)

    def test_fruit_str(self):
        fruit = Fruit()
        fruit.save(name="Coco", 
                   phono = "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg" , 
                   detail = "New Jaimaiquino",
                   description = "Rico en vitamina B2, se destaca por su suavidad y dulzura",
                   price = 80.5,
                   max_quantity = 99)

        # Compruebo el str funciona como se desea
        self.assertEqual(fruit.__str__(), "Coco | New Jaimaiquino | $80.5 Kg")

        