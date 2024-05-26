    
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from selenium.webdriver import Keys, ActionChains
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import StaleElementReferenceException
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common import exceptions
from selenium.webdriver.support.select import Select
from bs4 import BeautifulSoup
from time import sleep
import pandas as pd
import json
import numpy as np
from sqlalchemy import create_engine
import MySQLdb
from flask_mysqldb import MySQL
import os
from flask import Flask
from datetime import datetime


app = Flask(__name__)

service = Service(executable_path='./chromedriver.exe')
options = webdriver.ChromeOptions()
options.add_argument("start-maximized")
options.add_argument('--ignore-certificate-errors-spki-list')
options.add_argument('--ignore-ssl-errors')
options.add_argument('log-level=3')
driver = webdriver.Chrome(options=options)
keyword = 'Project Manager'
location = 'Italy'
driver.get('https://www.glassdoor.it/Stipendi/project-manager-stipendio-SRCH_KO0,15.htm')
driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
source = BeautifulSoup(driver.page_source,'html.parser')
salaries = source.find_all('div',{'class':"py css-17435dd"})
employers = [ ]
for x in range(len(salaries)):
    data_test_param = 'salaries-list-item-'+str(x)
    info = source.find('div', {'data-test': data_test_param}).text #info
    data_test_param = 'salaries-list-item-'+str(x)+'-employer-name'
    company = source.find('h3', {'data-test': data_test_param}).text #company
    data_test_param = 'salaries-list-item-'+str(x)+'-salary-info'
    salary = source.find('div', {'data-test': data_test_param}).text #salary
    dt = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
    employers.append({'Job': keyword, 'Location': location,'Company': company,'Salary': salary,"Datetime": dt})
df2 = pd.DataFrame(data=employers)

print(df2)

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATABASE = os.path.join(BASE_DIR, "database.db")
app = Flask(__name__)
#oldsqllitedb
#app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///database.db"
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = '1234'
app.config['MYSQL_DB'] = 'database'
#app.config["SQLALCHEMY_DATABASE_URI"] = "mysql+pymysql///root:1234@localhost/database"
#app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SECRET_KEY'] = "Quasimodo12"
#db = SQLAlchemy(app)
db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="1234",  # your password
                     db="database")

c = db.cursor()

c.executemany("""
    INSERT INTO salary_employers (Job, Location, Company, Salary, Datetime)
    VALUES (%(Job)s, %(Location)s, %(Company)s, %(Salary)s, %(Datetime)s)""", employers)

db.commit() 
