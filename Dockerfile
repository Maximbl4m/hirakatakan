# Dockerfile for HiraKataKan

# Use the latest version of Alpine as the base image
FROM alpine:latest

# Install Python3 and required dependencies
RUN apk add --no-cache python3 py3-pip

# Set the working directory
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install Python dependencies (if requirements.txt exists)
RUN if [ -f requirements.txt ]; then pip3 install -r requirements.txt; fi

# Expose port 4096 for the web server
EXPOSE 4096

# Command to run the application (this command should be adjusted based on the actual application entry point)
CMD ["python3", "app.py"]
