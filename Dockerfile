#Define base image
FROM python:3.11-slim
WORKDIR /app

#This will copy requirements .txt from current dir to /app directory in the container
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# port no same as ur app is using
EXPOSE 5002

CMD ["python","app.py"]

LABEL authors="Saurabh Sharma"