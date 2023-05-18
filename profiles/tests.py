from django.test import TestCase

from django.db import IntegrityError
from profiles.models import Avatar

class CursoTests(TestCase):

    def test_creation_avatar(self):

        avatar = Avatar()
        avatar.save()

        self.assertEqual(avatar.objects.count(), 1)
        self.assertEqual(avatar.name, "Coco")
        self.assertEqual(avatar.price, 80.5)

    def test_avatar_str(self):
        avatar = Avatar()
        avatar.save()

        # Compruebo el str funciona como se desea
        self.assertEqual(avatar.__str__(), "Coco | New Jaimaiquino | $80.5 Kg")

        