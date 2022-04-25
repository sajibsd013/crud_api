from django.shortcuts import render
from .models import Events
from .serializers import EventSerializer
from rest_framework import viewsets, pagination

# Create your views here.

class PageSizePagination(pagination.PageNumberPagination):
    page_size = 5
    page_size_query_param = "size"


class EventViewSet(viewsets.ModelViewSet):
    queryset = Events.objects.all().order_by('-id')
    serializer_class = EventSerializer
    pagination_class = PageSizePagination
