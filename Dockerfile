FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
# Use the official Python image from the Docker Hub
# Set the working directory in the container to /app
# Copy the current directory contents into the container at /app
# Install any needed packages specified in requirements.txt
# Make port 8000 available to the world outside this container
# Run the FastAPI application using Uvicorn when the container launches