# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /new

# Copy the requirements file into the container at /app
COPY requirements.txt /new/

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /new/

# Expose the port on which Streamlit will run
EXPOSE 8501

# Define the command to run your Streamlit application
CMD ["streamlit", "run", "new.py"]
