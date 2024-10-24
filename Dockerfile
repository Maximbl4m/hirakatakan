# Dockerfile for HiraKataKan with Node.js and Python
FROM alpine:latest

# Install Python3, Node.js, npm, and other required dependencies
RUN apk add --no-cache python3 py3-pip nodejs npm

# Set the working directory
WORKDIR /app

# Copy the application files into the container
COPY . /app

WORKDIR /app/backend
#CMD ["sh"]
RUN /usr/bin/python3 -m venv ./venv
RUN . ./venv/bin/activate && pip install --upgrade pip && if [ -f ../requirements.txt ]; then pip install -r ../requirements.txt; fi

# Install npm dependencies for React frontend
WORKDIR /app/frontend
RUN if [ -f package.json ]; then npm install; fi

# Build React application
RUN npm run build

# Set the working directory back to /app for backend
WORKDIR /app

# Expose port 4096 for the web server
EXPOSE 4096

# Command to activate the virtual environment and run the application
CMD ["sh", "-c", ". backend/venv/bin/activate && python3 backend/app.py"]