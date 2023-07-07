# Base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the project code to the container
COPY . /app/

# Expose the port on which the Django development server will run
EXPOSE 8000

# Run the Django development server
CMD ["streamlit", "run", ".app/index.py", "0.0.0.0:8000"]
