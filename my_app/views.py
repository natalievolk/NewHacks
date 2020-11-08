from my_app import app
from flask import render_template, request, redirect
import requests

title = "Discussion Board"
posts = [{}]


@app.route("/Discussion_Board")
def index():
    return render_template("index.html", title=title, posts = posts)

@app.route("/")
def main_page():
    return render_template("NewNewNewHacks.html")

@app.route("/change_title")
def change_title():
    global title
    new_title = request.args.get("title")
    title = new_title
    return redirect("/")

@app.route("/post", methods=["POST"])
def make_post():
    global posts
    post_info = request.get_json()
    posts.append(post_info)
    return redirect("/")