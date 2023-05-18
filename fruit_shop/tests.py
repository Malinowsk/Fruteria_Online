from django.test import TestCase

from django.db import IntegrityError
from django.contrib.auth.models import User
from fruit_shop.models import Fruit , PurchaseCart

class FruitTests(TestCase):

    def test_creation_fruit_1(self):

        fruit = Fruit(name="Coco", phono = "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg" , detail = "New Jaimaiquino",description = "Rico en vitamina B2, se destaca por su suavidad y dulzura",price = 80.5,max_quantity = 99)

        fruit.save()
        
        self.assertEqual(fruit.objects.count(), 1)
        self.assertEqual(fruit.name, "Coco")
        self.assertEqual(fruit.photo, "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg")
        self.assertEqual(fruit.detail, "New Jaimaiquino")
        self.assertEqual(fruit.description, "Rico en vitamina B2, se destaca por su suavidad y dulzura")
        self.assertEqual(fruit.price, 80.5)
        self.assertEqual(fruit.max_quantity, 99)

    def test_fruit_str_1(self):
        fruit = Fruit()
        fruit.save(name="Coco", 
                   phono = "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg" , 
                   detail = "New Jaimaiquino",
                   description = "Rico en vitamina B2, se destaca por su suavidad y dulzura",
                   price = 80.5,
                   max_quantity = 99)

        # Compruebo el str funciona como se desea
        self.assertEqual(fruit.__str__(), "Coco | New Jaimaiquino | $80.5 Kg")

    def test_creation_fruit_2(self):

        fruit = Fruit()
        fruit.save(name="Ciruela", 
                   phono = "https://editorialtelevisa.brightspotcdn.com/dims4/default/dbcfc9c/2147483647/strip/true/crop/600x338+0+31/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.amazonaws.com%2Fbrightspot%2Fwp-content%2Fuploads%2F2020%2F01%2Fciruelas.jpg" , 
                   detail = "Nueva sevilla de los andes",
                   description = "Rico en vitamina A, sabor amargo",
                   price = 120,
                   max_quantity = 3)

        self.assertEqual(fruit.objects.count(), 1)
        self.assertEqual(fruit.name, "Ciruela")
        self.assertEqual(fruit.photo, "https://editorialtelevisa.brightspotcdn.com/dims4/default/dbcfc9c/2147483647/strip/true/crop/600x338+0+31/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.amazonaws.com%2Fbrightspot%2Fwp-content%2Fuploads%2F2020%2F01%2Fciruelas.jpg")
        self.assertEqual(fruit.detail, "Nueva sevilla de los andes")
        self.assertEqual(fruit.description, "Rico en vitamina A, sabor amargo")
        self.assertEqual(fruit.price, 120)
        self.assertEqual(fruit.max_quantity, 3)

    def test_fruit_str_2(self):
        fruit = Fruit()
        fruit.save(name="Ciruela", 
                   phono = "https://editorialtelevisa.brightspotcdn.com/dims4/default/dbcfc9c/2147483647/strip/true/crop/600x338+0+31/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.amazonaws.com%2Fbrightspot%2Fwp-content%2Fuploads%2F2020%2F01%2Fciruelas.jpg" , 
                   detail = "Nueva sevilla de los andes",
                   description = "Rico en vitamina A, sabor amargo",
                   price = 120,
                   max_quantity = 3)

        # Compruebo el str funciona como se desea
        self.assertEqual(fruit.__str__(), "Ciruela | Nueva sevilla de los andes | $120 Kg")


    def test_creation_fruit_3(self):

        fruit = Fruit()
        fruit.save(name="Kiwi", 
                   phono = "https://www.infobae.com/new-resizer/gVRGWPpWLmctvHrhMc0lm_KXJio=/992x661/filters:format(webp):quality(85)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/01/02123426/vegetales-y-frutas-SF-5.jpg" , 
                   detail = "El paradero de salta",
                   description = "Ideal para pasteles de sobremesa",
                   price = "80",
                   max_quantity = 3)

        self.assertEqual(fruit.objects.count(), 0) # da error por el price

    def test_fruit_str_3(self):
        fruit = Fruit()
        fruit.save(name="kiwi", 
                   phono = "https://www.infobae.com/new-resizer/gVRGWPpWLmctvHrhMc0lm_KXJio=/992x661/filters:format(webp):quality(85)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/01/02123426/vegetales-y-frutas-SF-5.jpg" , 
                   detail = "El paradero de salta",
                   description = "Ideal para pasteles de sobremesa",
                   price = 80,
                   max_quantity = 3)

        # Compruebo el str funciona como se desea
        self.assertEqual(fruit.__str__(), "kiwi | El paradero de salta | $80 Kg")

    def test_creation_fruit_4(self):

        fruit = Fruit()
        fruit.save(name="Papaya", 
                   phono = "https://exoticfruitbox.com/wp-content/uploads/2015/10/papaya-3-Exotic-500x500.jpg" , 
                   detail = "The beach",
                   description = "Especial para comer en verano",
                   price = 100000,
                   max_quantity = 3000)

        self.assertEqual(fruit.objects.count(), 1)
        self.assertEqual(fruit.name, "Papaya")
        self.assertEqual(fruit.photo, "https://exoticfruitbox.com/wp-content/uploads/2015/10/papaya-3-Exotic-500x500.jpg")
        self.assertEqual(fruit.detail, "The beach")
        self.assertEqual(fruit.description, "Especial para comer en verano")
        self.assertEqual(fruit.price, 100000)
        self.assertEqual(fruit.max_quantity, 3000)

    def test_fruit_str_4(self):
        fruit = Fruit()
        fruit.save(name="Papaya", 
                   phono = "https://exoticfruitbox.com/wp-content/uploads/2015/10/papaya-3-Exotic-500x500.jpg" , 
                   detail = "The beach",
                   description = "Especial para comer en verano",
                   price = 100000,
                   max_quantity = 3000)

        # Compruebo el str funciona como se desea
        self.assertEqual(fruit.__str__(), "Papaya | The beach | $100000 Kg")


#########################################

class PurchaseCartTestCase(TestCase):

    def test_creation_purchasecart_1(self):

        self.user = User.objects.create(username="testuser")
        self.fruit = Fruit.objects.create(
                    name="Coco", 
                    phono = "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg" , 
                    detail = "New Jaimaiquino",
                    description = "Rico en vitamina B2, se destaca por su suavidad y dulzura",
                    price = 80.5,
                    max_quantity = 99)
        self.quantity = 5
        self.state = "pending"
        self.purchase_code = "ABC123"
        PurchaseCart.objects.create(
            user=self.user,
            fruit=self.fruit,
            quantity=self.quantity,
            state=self.state,
            purchase_code=self.purchase_code
        )

        purchase = PurchaseCart.objects.get(id=self.id)
        self.assertEqual(purchase.user.username, "testuser")
        self.assertEqual(purchase.fruit.name, "Coco")
        self.assertEqual(purchase.quantity, self.quantity)
        self.assertEqual(purchase.state, self.state)
        self.assertEqual(purchase.purchase_code, self.purchase_code)


    def test_purchasecart_state_update_1(self):

        self.user = User.objects.create(username="testuser")
        self.fruit = Fruit.objects.create(
            name="Coco", 
            phono = "https://s1.eestatic.com/2020/02/04/ciencia/nutricion/fruta-fibra-salud_464966035_144333391_1706x960.jpg" , 
            detail = "New Jaimaiquino",
            description = "Rico en vitamina B2, se destaca por su suavidad y dulzura",
            price = 80.5,
            max_quantity = 99)
        self.quantity = 5
        self.state = "pending"
        self.purchase_code = "ABC123"

        PurchaseCart.objects.create(
            user=self.user,
            fruit=self.fruit,
            quantity=self.quantity,
            state=self.state,
            purchase_code=self.purchase_code
        )

        # Prueba que el estado de PurchaseCart se actualiza correctamente
        self.state = 'COMPLETED'
        self.save()
        updated_cart = PurchaseCart.objects.get(id=self.id)
        self.assertEqual(updated_cart.state, 'COMPLETED')


    
    def test_creation_purchasecart_2(self):

        self.user = User.objects.create(username="testuser")
        self.fruit = Fruit.objects.create(
                    name="Ciruela", 
                    phono = "https://editorialtelevisa.brightspotcdn.com/dims4/default/dbcfc9c/2147483647/strip/true/crop/600x338+0+31/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.amazonaws.com%2Fbrightspot%2Fwp-content%2Fuploads%2F2020%2F01%2Fciruelas.jpg" , 
                    detail = "Nueva sevilla de los andes",
                    description = "Rico en vitamina A, sabor amargo",
                    price = 120,
                    max_quantity = 3)
        self.quantity = 100
        self.state = "en camino"
        self.purchase_code = "sdfsdfsdf798798sdfsdf898d9sf"
        PurchaseCart.objects.create(
            user=self.user,
            fruit=self.fruit,
            quantity=self.quantity,
            state=self.state,
            purchase_code=self.purchase_code
        )

        purchase = PurchaseCart.objects.get(id=self.id)

        self.assertEqual(purchase.user.username, "testuser")
        self.assertEqual(purchase.fruit.name, "Ciruela")
        self.assertEqual(purchase.quantity, self.quantity)
        self.assertEqual(purchase.state, self.state)
        self.assertEqual(purchase.purchase_code, self.purchase_code)


    def test_purchasecart_state_update_2(self):
        # Prueba que el estado de PurchaseCart se actualiza correctamente

        self.user = User.objects.create(username="testuser")
        self.fruit = Fruit.objects.create(
                    name="Ciruela", 
                    phono = "https://editorialtelevisa.brightspotcdn.com/dims4/default/dbcfc9c/2147483647/strip/true/crop/600x338+0+31/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.amazonaws.com%2Fbrightspot%2Fwp-content%2Fuploads%2F2020%2F01%2Fciruelas.jpg" , 
                    detail = "Nueva sevilla de los andes",
                    description = "Rico en vitamina A, sabor amargo",
                    price = 120,
                    max_quantity = 3)
        self.quantity = 100
        self.state = "en camino"
        self.purchase_code = "sdfsdfsdf798798sdfsdf898d9sf"

        PurchaseCart.objects.create(
            user=self.user,
            fruit=self.fruit,
            quantity=self.quantity,
            state=self.state,
            purchase_code=self.purchase_code
        )

        purchase = PurchaseCart.objects.get(id=self.id)

        purchase.state = 'LLEGO A DESTINO'
        purchase.save()
        updated_cart = PurchaseCart.objects.get(id=self.id)
        self.assertEqual(updated_cart.state, 'LLEGO A DESTINO')

