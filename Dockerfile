# 1. Base image
FROM python:3.11-slim

# 2. Set working directory
WORKDIR /app

# 3. Copy dependency file first
COPY requirements.txt .

# 4. Install Flask dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy all project code
COPY . .

# 6. Expose Flask port
EXPOSE 5000

# 7. Run Flask app
CMD ["python", "app.py"]
