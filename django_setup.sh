
#/bin/bash

echo "welcome!!"

read -p "enter your venv name " venv_name
python3 -m virtualenv $venv_name
source $venv_name/bin/activate
pip install django==3.2.15 
read -p "enter your django project name " project_name
django-admin startproject $project_name
cd $project_name
read -p "enter your django app name " app_name
django-admin startapp $app_name
python3 manage.py migrate 
python3 manage.py runserver
