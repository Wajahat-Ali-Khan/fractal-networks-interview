# Dockerfile for Django app
FROM python:3.9

ENV PYTHONUNBUFFERED 1

# Install GDAL dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    libgdal-dev \
    gdal-bin

# Set GDAL library path
ENV GDAL_LIBRARY_PATH=/usr/lib/libgdal.so

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

WORKDIR /app/myproject

CMD python manage.py runserver 0.0.0.0:8000
