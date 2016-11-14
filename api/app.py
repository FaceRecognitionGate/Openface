from flask import Flask, request

app = Flask(__name__)


@app.route("/new_image", methods=["GET"])
def new_image():
    """
    Executes script for processing new users
    data
    """
    # TODO


if __name__ == "__main__":
    app.run()
