from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from Simple Python App! 🚀"

@app.route("/health")
def health():
    return jsonify(status="healthy", application="simple-python-app")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
