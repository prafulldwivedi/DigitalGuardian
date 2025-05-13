from django.urls import path
from .views import verify_domain

urlpatterns = [
    path('api/verify/', verify_domain),
]
