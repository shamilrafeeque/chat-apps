from django.shortcuts import render

# Create your views here.
# chat/views.py

from django.shortcuts import render

def chat_box(request, chat_box_name):
    # we will get the chatbox name from the url
    print("chatnew")
    return render(request, "chatbox.html", {"chat_box_name": chat_box_name})
