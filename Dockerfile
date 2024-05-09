# Використовуйте базовий образ Python
FROM python:3.9

# Встановіть Flask в образі
RUN pip install Flask requests

# Встановіть робочу директорію у контейнері
WORKDIR /app

# Скопіюйте всі файли додатка в образ
COPY . /app

# Визначте команду для запуску сервера Flask у контейнері
CMD ["python","app.py"]

