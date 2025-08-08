# Use official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the application code
COPY . .

# Expose the Flask port
EXPOSE 5000

# Run the app
CMD ["python", "main.py"]
