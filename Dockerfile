# Dockerfile

FROM python:3.8-slim-buster

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy all files from current directory to /app in container
COPY . .

# Expose port 8000
EXPOSE 8000

# Command to run the application
CMD ["python", "main.py"]
