
from django.contrib import admin
from django.urls import path, include

admin.site.site_header="Student_Restframework"
admin.site.site_title="students"


urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('api.urls')),
]
