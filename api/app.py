from flask import Flask, request
import os

app = Flask(__name__)


@app.route("/new_image")
def new_image():
    """
    Executes script for processing new users
    data
    """
    # TODO
    os.system("touch /opt/data/shrek.txt")
    return "DONE", 200


if __name__ == "__main__":
    app.run()
