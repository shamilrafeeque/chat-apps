# Use Python 3.10-slim as the base image
FROM python:3.10-slim

# Environment settings
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt /app/
RUN python -m pip install --upgrade pip setuptools && pip install -r requirements.txt

# Copy application code
COPY . /app

# Create a non-root user for better security
RUN adduser --disabled-password myuser
USER myuser

# Expose port (optional, for clarity)
EXPOSE 8000
