# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
# (We don't have one, but this is good practice)
# COPY requirements.txt .
# RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY main.py .

# Install Flask (since we don't have a requirements.txt)
RUN pip install Flask

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV PORT 8080

# Run main.py when the container launches
CMD ["python", "main.py"]
