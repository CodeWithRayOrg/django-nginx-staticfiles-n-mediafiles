#!/bin/sh

set -e

python manage.py makemigrations
python manage.py migrate

python manage.py collectstatic --noinput

gunicorn project.wsgi -b 0.0.0.0:8000
