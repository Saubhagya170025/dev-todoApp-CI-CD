FROM python:3.12

RUN pip install --upgrade pip setuptools


RUN pip install django==3.2


COPY . .


RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

