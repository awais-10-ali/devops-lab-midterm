# Start with a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all your project files into the container
COPY . .

# Install necessary libraries 
RUN pip install pandas scikit-learn fastapi uvicorn pydantic

# Expose port 8000 for the FastAPI application
EXPOSE 8000

# Start the FastAPI server using Uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
