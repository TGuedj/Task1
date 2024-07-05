from flask import Flask, jsonify
import requests

app = Flask(__name__)

@app.route('/')
def get_joke():
    response = requests.get("https://api.chucknorris.io/jokes/random")
    if response.status_code == 200:
        joke = response.json()
        return jsonify(joke)
    else:
        return jsonify({"error": "Failed to fetch joke"}), 500

if __name__ == '__main__':
    app.run(debug=True)
