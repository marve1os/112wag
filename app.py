from flask import Flask, render_template
import requests
import random

app = Flask(__name__)

# Функція для отримання URL випадкового зображення котика з Unsplash
def get_cat_image_url():
    url = "https://api.unsplash.com/photos/random"
    params = {
        "query": "cat",
        "orientation": "landscape",
        "client_id": "DPNw3BygNSPH-b7quoPt07QcVt6a9wa9PRgZvcdetJs"  # Замініть це значення на ваш ключ доступу Unsplash
    }
    response = requests.get(url, params=params)
    data = response.json()
    cat_image_url = data["urls"]["regular"]
    return cat_image_url

@app.route('/')
def index():
    cat_image_url = get_cat_image_url()
    return render_template('index.html', cat_image_url=cat_image_url)

if __name__ == '__main__':
    app.run(debug=True)
