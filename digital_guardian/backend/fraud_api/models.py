from django.db import models

class DomainCheck(models.Model):
    domain = models.CharField(max_length=255)
    is_fraudulent = models.BooleanField(default=False)
    checked_at = models.DateTimeField(auto_now_add=True)
