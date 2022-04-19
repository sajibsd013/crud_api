from django.contrib import admin
from .models import Events
# Register your models here.


class EventAdmin(admin.ModelAdmin):
    list_display = ["id", "Name", "Location", "Date"]

    class Meta:
        model = Events


admin.site.register(Events, EventAdmin)
