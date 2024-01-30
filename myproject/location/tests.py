from django.test import TestCase
from .models import Location
from pprint import pprint

# Create your tests here.

class LocationModelTest(TestCase):
    def test_location_creation(self):
        location = Location.objects.create(
            name='Test Location',
            point='POINT(1.234 5.678)'
        )
        print('Creating a location object')
        pprint(location.__dict__)
        self.assertEqual(location.name, 'Test Location')
        self.assertEqual(location.point.x, 1.234)
        self.assertEqual(location.point.y, 5.678)