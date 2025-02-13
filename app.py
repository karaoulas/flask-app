from flask import Flask, render_template
import os
subnet="sg-0a49433a88e241b26"

app = Flask(__name__)

@app.route("/")
def home():
    return "Welcome to Flask on AWS!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
