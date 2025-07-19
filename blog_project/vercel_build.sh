#!/bin/bash
set -e
pip install -r requirements.txt
python blog_project/manage.py collectstatic --noinput
exec gunicorn blog_project.wsgi:application --bind=0.0.0.0:$PORT 