#!/bin/bash

# Create and activate virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: .\venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Create necessary directories
mkdir -p media/products
mkdir -p media/categories
mkdir -p media/reviews
mkdir -p static/css
mkdir -p static/js
mkdir -p static/images
mkdir -p templates
mkdir -p locale

# Compile translations
django-admin compilemessages

# Make and apply migrations
python manage.py makemigrations
python manage.py migrate

# Create superuser
echo "Creating superuser..."
python manage.py createsuperuser

# Collect static files
python manage.py collectstatic --noinput

echo "Setup completed successfully!"
echo "Run 'python manage.py runserver' to start the development server." 