FROM python:3.12

# Upgrade pip and setuptools
RUN pip install --upgrade pip setuptools

# Install Django
RUN pip install django==3.2

# Copy project files into the container
COPY . .

# Run database migrations
RUN python manage.py migrate

# Command to start the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

