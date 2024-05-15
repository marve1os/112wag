# Використовуємо офіційний образ Python з версією, що потрібна
FROM python:3.9-slim

# Встановлюємо необхідні пакети системи
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Створюємо робочу директорію для додатку
WORKDIR /app

# Встановлюємо Flask
RUN pip install Flask
RUN pip install mysql-connector-python
RUN pip install flask_sqlalchemy
EXPOSE 5000
# Копіюємо усі файли додатку до контейнера
COPY . .

# Вказуємо команду для запуску сервера Flask
CMD ["python", "app.py"]

