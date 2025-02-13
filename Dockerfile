<<<<<<< HEAD
FROM python:3.10
=======
FROM python:3.12

RUN pip install --upgrade pip setuptools

>>>>>>> 29323a9 (added Dockerfile)
RUN pip install django==3.2

COPY . .

RUN python manage.py migrate

<<<<<<< HEAD
CMD ["python", "manage.py","runserver","0.0.0.0:8000" ]
=======
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
>>>>>>> 29323a9 (added Dockerfile)
