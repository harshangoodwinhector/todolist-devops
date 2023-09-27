FROM python:3

# Install Django
RUN pip install django==4.2.5

# Copy the local directory contents to the container at /app
COPY . .

# Perform the Django migration
RUN python manage.py migrate

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]

