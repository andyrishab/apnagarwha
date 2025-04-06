# APNA GARWHA - E-commerce Platform

A full-stack e-commerce platform built with Django and modern frontend technologies.

## Features

- User Authentication (Signup/Login)
- Product Catalog with Categories
- Shopping Cart
- Wishlist
- Secure Checkout Process
- Order History
- Product Reviews
- Admin Panel
- Internationalization (English & Hindi)
- Responsive Design
- RESTful APIs

## Tech Stack

- Backend: Django 5.0
- Frontend: HTML5, CSS3, Bootstrap 5
- Database: SQLite (Development), PostgreSQL (Production)
- Authentication: Django Allauth
- API: Django REST Framework
- Payment: Stripe
- Internationalization: Django Rosetta & Model Translation

## Setup Instructions

1. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Set up environment variables:
Create a `.env` file in the root directory with:
```
SECRET_KEY=your-secret-key
DEBUG=True
STRIPE_PUBLIC_KEY=your-stripe-public-key
STRIPE_SECRET_KEY=your-stripe-secret-key
```

4. Run migrations:
```bash
python manage.py makemigrations
python manage.py migrate
```

5. Create a superuser:
```bash
python manage.py createsuperuser
```

6. Run the development server:
```bash
python manage.py runserver
```

7. Access the application:
- Main site: http://localhost:8000
- Admin panel: http://localhost:8000/admin

## Project Structure

```
apna_garwha/
├── accounts/          # User authentication and profiles
├── products/          # Product models and views
├── orders/           # Order processing
├── cart/             # Shopping cart functionality
├── wishlist/         # Wishlist functionality
├── reviews/          # Product reviews
├── api/              # REST API endpoints
├── static/           # Static files (CSS, JS, images)
└── templates/        # HTML templates
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License. 