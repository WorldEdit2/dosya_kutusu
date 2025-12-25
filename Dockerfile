FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Bu klasör kritik! Burayı dışarı bağlayacağız.
VOLUME ["/app/uploads"]

EXPOSE 5000

CMD ["python", "app.py"]
