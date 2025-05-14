# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy app
COPY app.py /app

# Install Flask
RUN pip install flask

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

