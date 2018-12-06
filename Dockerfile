# Use an official Python runtime as a parent image
FROM python:3.7.1-stretch

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org numpy
RUN pip install --trusted-host pypi.python.org Flask

CMD ["python", "app.py"]

