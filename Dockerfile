# Base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN pip install wheel
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the project code to the container
COPY . .

# Expose the port on which the Django development server will run
EXPOSE 8000

# Run the Django development server
CMD ["streamlit", "run", ".app/index.py", "0.0.0.0:8000"]
