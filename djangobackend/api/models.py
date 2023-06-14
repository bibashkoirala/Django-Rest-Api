from django.db import models

# Create your models here.
class Student(models.Model):
    stuname = models.CharField(max_length=100)
    email= models.CharField(max_length=25)
    

class Task(models.Model):
    title = models.CharField(max_length=200)
    Completed= models.BooleanField(default=False, blank= True, null=True)

    def __str__(self):
        return self.title
    
