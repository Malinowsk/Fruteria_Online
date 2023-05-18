from django.test import TestCase
from django.core.files.uploadedfile import SimpleUploadedFile
from django.db import IntegrityError
from profiles.models import Avatar
from django.contrib.auth.models import User

class AvatarTests(TestCase):

    def test_creation_avatar_1(self):
        self.user = User.objects.create(username="testuser")
        self.image = SimpleUploadedFile(
                        name='avatar1.png', 
                        content=open('./media/avatares/avatar1.png', 'rb').read(), 
                        content_type='image/png'
                    )

        Avatar.objects.create(
                    user=self.user,
                    image=self.image
                    )
        avatar = Avatar.objects.get(user=self.user)

        self.assertEqual(Avatar.objects.count(), 1)
        self.assertEqual(avatar.user.username, "testuser")
    
    def test_avatar_str_1(self):
        self.user = User.objects.create(username="testuser")
        self.image = SimpleUploadedFile(
                        name='avatar1.png', 
                        content=open('./media/avatares/avatar1.png', 'rb').read(), 
                        content_type='image/png'
                    )
         
        Avatar.objects.create(
                    user=self.user,
                    image=self.image
                    )
        avatar = Avatar.objects.get(user=self.user)

        # Compruebo el str funciona como se desea
        self.assertEqual(avatar.__str__(), "Avatar de: testuser")

    def test_creation_avatar_2(self):
        self.user = User.objects.create(username="admin")
        self.image = SimpleUploadedFile(
                        name='avatar2.png', 
                        content=open('./media/avatares/avatar2.png', 'rb').read(), 
                        content_type='image/png'
                    )

        Avatar.objects.create(
                    user=self.user,
                    image=self.image
                    )
        avatar = Avatar.objects.get(user=self.user)

        self.assertEqual(Avatar.objects.count(), 1)
        self.assertEqual(avatar.user.username, "admin")
    
    def test_avatar_str_2(self):
        self.user = User.objects.create(username="admin")
        self.image = SimpleUploadedFile(
                        name='avatar2.png', 
                        content=open('./media/avatares/avatar2.png', 'rb').read(), 
                        content_type='image/png'
                    )
         
        Avatar.objects.create(
                    user=self.user,
                    image=self.image
                    )
        avatar = Avatar.objects.get(user=self.user)

        # Compruebo el str funciona como se desea
        self.assertEqual(avatar.__str__(), "Avatar de: admin")

        