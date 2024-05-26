from flask import Flask, request, render_template, jsonify
from flask_sqlalchemy import SQLAlchemy
import json
import os
app = Flask(__name__)
app.config.from_object(os.environ['APP_SETTINGS'])
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

from models import Result

class BasicForm(FlaskForm):
    ids = StringField("ID",validators=[DataRequired()])
    submit = SubmitField("Submit")

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/",methods =['POST','GET'])
def main():
    form = BasicForm()
    return render_template("index.html",form = form)

suggestions = []
@app.route("/search/<string:box>")
def process(box):
    query = request.args.get('query')
    if box == 'university':
        # do some stuff to open your names text file
        # do some other stuff to filter
        # put suggestions in this format...
        with open('list-of-universities.txt') as f:
            data = f.readlines()
        while True:
            for i in data:
                suggestions.append(i)
    return jsonify({"suggestions":suggestions})

if __name__ == "__main__":
    app.run(debug=True)
    
from fastapi import FastAPI
from app.api import search

app = FastAPI()

app.include_router(search.router)