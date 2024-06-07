#!/bin/sh

# Poczekaj, aż baza danych będzie gotowa
./wait-for-it.sh db:5432

# Uruchom migracje
python manage.py migrate

# Uruchom serwer
python manage.py runserver 0.0.0.0:8000
