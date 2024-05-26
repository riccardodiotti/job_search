from datetime import timedelta
import os
from enum import Enum, unique
from flask import Flask, render_template, redirect, request,g,session, render_template_string,flash
from flask_wtf import FlaskForm
from wtforms import SelectField, StringField, SubmitField
from wtforms.validators import DataRequired, AnyOf
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.sql import func
from flask_mysqldb import MySQL
import mysql.connector
import sqlite3
from glassdoor_employee_scraper import *
from sqlalchemy import text

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATABASE = os.path.join(BASE_DIR, "database.db")
app = Flask(__name__)
#app.config['MYSQL_HOST'] = 'localhost'
#app.config['MYSQL_USER'] = 'root'
#app.config['MYSQL_PASSWORD'] = '1234'
#app.config['MYSQL_DB'] = 'database'
app.config['SECRET_KEY'] = "Quasimodo12"
#db = MySQL(app)
database_url = 'postgresql://database_w735_user:iqjLCkkaNAgNcNRdMu1OyLz2l71s5TBS@dpg-cp5mkif79t8c73f18p3g-a.oregon-postgres.render.com/database_w735'
#database_url = 'postgresql://postgres:1234@localhost:5432/database'
app.config['SQLALCHEMY_DATABASE_URI'] = database_url
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

choices = []
with open("list-of-jobs.txt", "r", encoding="utf8") as jobs_list:
	lines = jobs_list.readlines()
	for l in lines:
		choices.append(l.strip())
countries = []
with open("list-of-countries.txt", "r", encoding="utf8") as countries_list:
	linesc = countries_list.readlines()
	for lc in linesc:
		countries.append(lc.strip())
          
def get_db():
    db = getattr(g, '_database', None)
    if db is None:
        db = g._database = sqlite3.connect(DATABASE)
    return db

@app.teardown_appcontext
def close_connection(exception):
    db = getattr(g, '_database', None)
    if db is not None:
        db.close()

class RequiredIf(DataRequired):
    def __init__(self, other_field_name, other_field_value, message=None, *args, **kwargs):
        self.other_field_name = other_field_name
        self.other_field_value = other_field_value
        self.message = message

    def __call__(self, form, field):
        other_field = form[self.other_field_name]
        if other_field is None:
            raise Exception(f'no field named "{self.other_field_name}" in form')
        if other_field.data == self.other_field_value:
            super(RequiredIf, self).__call__(form, field)

class SearchForm(FlaskForm):
    job = SelectField("Job Search List", choices=choices, validators=[DataRequired()])
    job_details = StringField('Job Search text',
        validators=[
            RequiredIf('job', 'Other')
        ]
    )
    country = SelectField("Country Search List", choices=countries, validators=[DataRequired()])
    country_details = StringField('Country Search text',
        validators=[
            RequiredIf('country', 'Other')
        ]
    )
    submit = SubmitField("Submit")
    def any_fields_filled(self):
        return self.job.choices
    def validate(self):
        if len(self.job.choices) or len(self.country.choices) == 0:
            return False
        return True

def search_database(searchkey1,searchkey2):
    conn = db.engine.connect()
    #cursor = db.connection.cursor()
    #cursor = conn.cursor()
    searchkeystr1 = str(searchkey1)
    searchkeystr2 = str(searchkey2)
    result = conn.execute(
            text("SELECT * FROM public.results WHERE Job = :job AND Location = :location"),
            {'job': searchkeystr1, 'location': searchkeystr2}
        )
    #cursor.execute("""SELECT * FROM results WHERE Job = %s AND Location = %s""",(searchkeystr1,searchkeystr2,))
    #msg = cursor.fetchone() 
    #results = cursor.fetchall()
    results = result.fetchall()
    #cursor.execute("""SELECT * FROM salary_employers WHERE Job = %s AND Location = %s""",(searchkeystr1,searchkeystr2,))
    salary_employers = conn.execute(
            text("SELECT * FROM public.salary_employers WHERE Job = :job AND Location = :location"),
            {'job': searchkeystr1, 'location': searchkeystr2}
        )
    conn.close()
    #cursor.close()
    return results, salary_employers

@app.route('/',methods = ['GET','POST'])
@app.route('/home',methods = ['GET','POST'])
def index():
    form = SearchForm()
    session.permanent=True
    if request.method == 'GET' and request.args.get('job') and request.args.get('country'):
        jobsearch = request.args.get('job')
        countrysearch = request.args.get('country')
        if request.args.get('job') == "Other":
            jobsearch = request.args.get('job_details')
        if request.args.get('country') == "Other":
            countrysearch = request.args.get('country_details')
        session['job'] =  jobsearch
        session['country'] =  countrysearch
        #flash("Search Request Submitted Successfully")
        return redirect('/search')
    else:
        return render_template("index.html",form=form)

if __name__ == "__main__":
    app.run(debug=True)

@app.route('/search')
def search():
    searchkey1 = session.get('job', None)
    searchkey2 = session.get('country', None)
    conn = db.engine.connect()
    #cursor = db.connection.cursor()
    searchkeystr1 = str(searchkey1)
    searchkeystr2 = str(searchkey2)
    print(searchkey1)
    print(searchkey2)
    #cursor.execute("""SELECT * FROM results WHERE Job = %s AND Location = %s""",(searchkeystr1,searchkeystr2,))
    result = conn.execute(
            text("SELECT * FROM public.results WHERE job = :job AND location = :location"),
            {'job': searchkeystr1, 'location': searchkeystr2}
        )
    #msg = cursor.fetchone() 
    msg=result.fetchone() 
    if not msg:
        display = exec(searchkeystr1,searchkeystr2)
        flash(display,"info")
        return redirect('/')
    else:
        flash("Search Request Submitted Successfully")
    rows_results, rows_salaries = search_database(searchkey1,searchkey2)
    return render_template("results.html",rows_results = rows_results,rows_salaries = rows_salaries,job_description = searchkeystr1,  location=searchkeystr2)

@app.route("/logout")
def logout():
     session.pop("user",None)
     flash("You have been logged out!","info")
     return redirect('/')
    
@app.errorhandler(500)
def internal_error(error):
    return "500 error"

@app.errorhandler(404)
def pageNotFound(error):
    return "page not found"

class Results():
    def __init__(self, id, name, university, job, company, avgsalary, salaryrange, date_added):
        self.id = id
        self.name = name
        self.university = university
        self.job = job
        self.company = company
        self.avgsalary = avgsalary
        self.salaryrange = salaryrange
        self.date_added = date_added

    def save(self):
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO public.results (name, university, job, company) VALUES (%s, %s, %s, %s)", 
                    (self.name, self.university, self.job, self.company))
        mysql.connection.commit()
        cur.close()

    def fetch_all():
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM results.results")
        data = cur.fetchall()
        cur.close()
        return data

