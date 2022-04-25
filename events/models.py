from django.db import models

# Create your models here.

class Events(models.Model):
    Name = models.CharField(max_length=60)
    Location = models.CharField(max_length=60)
    Date =  models.DateTimeField()

    class Meta:
        verbose_name_plural = "Events List"
        db_table = "Events"

    
