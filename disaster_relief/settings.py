"""
Production-ready settings for DRSC Optimizer.
Replace disaster_relief/settings.py with this file.
"""
import os
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent

# ═══════════════════════════════════════
# SECURITY
# ═══════════════════════════════════════

# IMPORTANT: Change this to a random 50-character string before deploying
# Generate one at: https://djecrety.ir/
SECRET_KEY = os.environ.get('DJANGO_SECRET_KEY', 'CHANGE-ME-before-deploying-use-djecrety-ir-to-generate')

# Set to False in production. Set to True only when debugging on your laptop.
DEBUG = True

# Add your PythonAnywhere domain here after deployment
# Example: ['yourusername.pythonanywhere.com']
ALLOWED_HOSTS = os.environ.get('DJANGO_ALLOWED_HOSTS', 'localhost,127.0.0.1').split(',')

# CSRF trusted origins for browser preview
CSRF_TRUSTED_ORIGINS = [
    'http://localhost',
    'http://127.0.0.1',
    'http://127.0.0.1:8000',
    'http://127.0.0.1:32777',
]

# HTTPS security headers (activated when running behind HTTPS)
if not DEBUG:
    SECURE_SSL_REDIRECT = True
    SESSION_COOKIE_SECURE = True
    CSRF_COOKIE_SECURE = True
    SECURE_BROWSER_XSS_FILTER = True
    SECURE_CONTENT_TYPE_NOSNIFF = True
    SECURE_HSTS_SECONDS = 31536000
    SECURE_HSTS_INCLUDE_SUBDOMAINS = True
    SECURE_HSTS_PRELOAD = True
    SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

# ═══════════════════════════════════════
# APPS
# ═══════════════════════════════════════

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'core',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'disaster_relief.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'disaster_relief.wsgi.application'

# ═══════════════════════════════════════
# DATABASE
# ═══════════════════════════════════════

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': os.environ.get('DB_NAME', 'disaster_relief_db'),
        'USER': os.environ.get('DB_USER', 'root'),
        'PASSWORD': os.environ.get('DB_PASSWORD', '786687'),
        'HOST': os.environ.get('DB_HOST', 'localhost'),
        'PORT': os.environ.get('DB_PORT', '3306'),
        'OPTIONS': {
            'charset': 'utf8mb4',
            'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
        },
    }
}

# ═══════════════════════════════════════
# PASSWORD SECURITY
# ═══════════════════════════════════════

AUTH_PASSWORD_VALIDATORS = [
    {'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator'},
    {'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
     'OPTIONS': {'min_length': 8}},
    {'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator'},
    {'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator'},
]

# Passwords are hashed with PBKDF2 + SHA256 (Django default, industry standard)
PASSWORD_HASHERS = [
    'django.contrib.auth.hashers.PBKDF2PasswordHasher',
    'django.contrib.auth.hashers.PBKDF2SHA1PasswordHasher',
    'django.contrib.auth.hashers.Argon2PasswordHasher',
    'django.contrib.auth.hashers.BCryptSHA256PasswordHasher',
]

# ═══════════════════════════════════════
# AUTH SETTINGS
# ═══════════════════════════════════════

LOGIN_URL = 'login'
LOGIN_REDIRECT_URL = 'coordinator_dashboard'
LOGOUT_REDIRECT_URL = 'login'

# Session expires after 8 hours of inactivity
SESSION_COOKIE_AGE = 28800
SESSION_SAVE_EVERY_REQUEST = True

# ═══════════════════════════════════════
# INTERNATIONALIZATION
# ═══════════════════════════════════════

LANGUAGE_CODE = 'en-us'
TIME_ZONE = 'Asia/Karachi'
USE_I18N = True
USE_TZ = True

# ═══════════════════════════════════════
# STATIC FILES
# ═══════════════════════════════════════

STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')

# ═══════════════════════════════════════
# LOGGING (production)
# ═══════════════════════════════════════

if not DEBUG:
    LOGGING = {
        'version': 1,
        'disable_existing_loggers': False,
        'handlers': {
            'file': {
                'level': 'WARNING',
                'class': 'logging.FileHandler',
                'filename': os.path.join(BASE_DIR, 'drsc.log'),
            },
        },
        'loggers': {
            'django': {
                'handlers': ['file'],
                'level': 'WARNING',
                'propagate': True,
            },
        },
    }

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
