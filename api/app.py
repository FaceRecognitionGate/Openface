from flask import Flask, request
import os

app = Flask(__name__)


@app.route("/new")
def new_image():
    """
    Executes script for processing new users
    data
    """
    os.system("sh /opt/data/scripts/train.sh")
    # TODO: Check if the training actually worked
    return "DONE", 200


@app.route("check")
def check():
    """
    Checks if a given user is allowed to enter
    """
    os.system("sh /opt/data/scripts/teste.sh")


if __name__ == "__main__":
    app.run()
