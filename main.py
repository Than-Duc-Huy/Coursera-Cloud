from flask import Flask
from flask import jsonify
app = Flask(__name__)

@app.route('/')
def hello():
    """Return HTTP greeting"""
    print("I am inside hello world")
    return "Hello World! There are changes in us central 1"

@app.route('/echo/<name>')
def echo(name):
    print(f"Printing new name: {name}")
    val = {"new-name": name}
    return jsonify(val)

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)