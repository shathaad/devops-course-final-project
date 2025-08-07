FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy source code
COPY . .


# Run the app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
