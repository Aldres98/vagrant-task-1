from flask import Flask
from datetime import datetime
from flask import request


app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

@app.route('/time')
def time():
    return datetime.utcnow()

@app.route('/fingerprint')
def fingerprint():
    return request.headers.get('User-Agent')


