# Base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN pip install wheel
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8501

# Copy the project code to the container
COPY . .

ENTRYPOINT ["streamlit", "run"]

# Run the Django development server
CMD ["index.py"]
