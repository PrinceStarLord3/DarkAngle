# app.py

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'GreyMatters'

# Optional: Define a run method for custom server setup
def run():
    app.run(host='0.0.0.0', port=8000)

# This allows you to run the Flask app by executing `python app.py`
if __name__ == "__main__":
    run()
