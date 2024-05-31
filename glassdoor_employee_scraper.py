import sys
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
import numpy as np
from sqlalchemy import create_engine
from datetime import datetime
import MySQLdb
import psycopg2

# Login
def login(driver):
    login = open('login.txt') # this is your linkedin account login, store in a seperate text file. I recommend creating a fake account so your real one dosen't get flagged or banned
    line = login.readlines()
    email = line[0]
    password = line[1]
    driver.implicitly_wait(10)
    driver.get("https://www.glassdoor.com/index.htm")
    ignored_exceptions=(NoSuchElementException,StaleElementReferenceException)
    your_element = WebDriverWait(driver, 100,ignored_exceptions=ignored_exceptions).until(EC.visibility_of_element_located((By.ID, "inlineUserEmail")))
    #your_element = WebDriverWait(driver, 2,ignored_exceptions=ignored_exceptions)\
    #                    .until(EC.presence_of_element_located((By.ID, "inlineUserEmail")))
    sleep(2)
    eml = driver.find_element(By.ID, "inlineUserEmail")
    eml.send_keys(email)
    ignored_exceptions=(NoSuchElementException,StaleElementReferenceException)
    your_element = WebDriverWait(driver, 100,ignored_exceptions=ignored_exceptions).until(EC.visibility_of_element_located((By.ID, "inlineUserPassword")))
    #your_element = WebDriverWait(driver, 2,ignored_exceptions=ignored_exceptions)\
    #                    .until(EC.presence_of_element_located((By.ID, "inlineUserPassword")))
    sleep(2)
    passwd = driver.find_element(By.ID, "inlineUserPassword")
    passwd.send_keys(password)
    sleep(2)
    loginbutton = WebDriverWait(driver, 30).until(EC.element_to_be_clickable((By.XPATH,"//button[@type='submit']")))
    driver.execute_script("arguments[0].click();", loginbutton)

def getSalaries(driver,keyword,location):
    driver.implicitly_wait(10)
    driver.get("https://www.glassdoor.com/salaries/index.htm")
    sleep(1)
    searchbox = driver.find_element(By.NAME, "typedKeyword")
    searchbox.send_keys(keyword)
    try:
        sleep(4)
        li_search = driver.find_elements(By.XPATH,"//div[@class='HeroSearch_keywordInput__FPISi css-12sw74s e160mvh60']//ul[@class='suggestions down']//li")
        sleep(3)
        li_search[0].click()
    except Exception:
        pass
    locationbox = driver.find_element(By.NAME, "Autocomplete")
    locationbox.send_keys(location)
    try:
        sleep(4)
        li_location = driver.find_elements(By.XPATH,"//div[@class='HeroSearch_locationInput__R5mkt css-12sw74s e160mvh60']//ul[@class='suggestions down']//li")
        sleep(3)
        li_location[0].click()
    except Exception:
        pass
    searchbutton = driver.find_element(By.XPATH,"//button[@data-test = 'desktop-submit-button']")
    searchbutton.click()
    driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
    source = BeautifulSoup(driver.page_source,'html.parser')
    overall_salary = [ ]
    try:
        if source.find('div', attrs={'data-test': 'occ-median-update-date'})  is not None:
            update_date = source.find('div', attrs={'data-test': 'occ-median-update-date'}).text #update_date
        else:
            update_date = 'None'
    except Exception:
        update_date = 'None'
    try:
        if driver.find_element(By.XPATH,"//aside[@data-test='confidence-badge']")  is not None:
            confidence = driver.find_element(By.XPATH,"//aside[@data-test='confidence-badge']").text #confidence
        else:
            confidence = 'None'
    except Exception:
        confidence = 'None'
    try:
        if driver.find_element(By.XPATH,"//aside[@data-test='confidence-badge']")  is not None:
            total_salary = source.find('div', attrs={'data-test': 'total-pay'}).text #total pay
        else:
            total_salary = 'None'
    except Exception:
        total_salary = 'None'#total pay
    try:
        if source.find('div', attrs={'data-test': 'base-pay'})  is not None:
            base_salary = source.find('div', attrs={'data-test': 'base-pay'}).text #base pay
        else:
            base_salary = 'None'
    except Exception:
        base_salary = 'None'#base pay
    try:
        if source.find('div', attrs={'data-test': 'additional-pay-breakdown-only-one'})  is not None:
            additional_salary = source.find('div', attrs={'data-test': 'additional-pay-breakdown-only-one'}).text #additional pay
        else:
            additional_salary = 'None'
    except Exception:
        additional_salary = 'None'#additional pay
    try:
        if source.find('div', {'class': 'mb-xxsm d-flex align-items-baseline css-16x4inx ekyprye1'})  is not None:
            avg_salary = source.find('div', {'class': 'mb-xxsm d-flex align-items-baseline css-16x4inx ekyprye1'}).text #avg pay
        else:
            avg_salary = 'None'
    except Exception:
        avg_salary = 'None'#avg pay
    datet = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
    overall_salary.append({'Job': keyword,
                               'Location': location,'Confidence': confidence,
                               'Total_Salary':total_salary, 'Base_Salary': base_salary,
                               'Additional_Salary':additional_salary,'Avg_Salary':avg_salary,
                               'Date_Added':update_date, 'Datetime': datet})
    
    salaries = source.find_all('div',{'class':"py css-17435dd"})
    print(len(salaries))
    salary_employers = [ ]
    for x in range(len(salaries)):
        data_test_param = 'salaries-list-item-'+str(x)
        info = source.find('div', {'data-test': data_test_param}).text #info
        data_test_param = 'salaries-list-item-'+str(x)+'-employer-name'
        company = source.find('h3', {'data-test': data_test_param}).text #company
        data_test_param = 'salaries-list-item-'+str(x)+'-salary-info'
        salary = source.find('div', {'data-test': data_test_param}).text #salary
        dt = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
        salary_employers.append({'Job': keyword, 'Location': location,'Company': company,'Salary': salary,'Datetime': dt})

    return overall_salary, salary_employers

def exec(keyword,location):
    service = Service(executable_path='./chromedriver.exe')
    options = webdriver.ChromeOptions()
    options.add_argument('--no-sandbox')
    options.add_argument('--ignore-certificate-errors')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument('--disable-extensions')
    options.add_argument('--disable-gpu')
    options.add_argument('start-maximized')
    options.add_argument('--ignore-certificate-errors-spki-list')
    options.add_argument('--ignore-ssl-errors')
    options.add_argument('log-level=3')
    options.add_argument("--headless")
    options.add_argument(
    "user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36")
    driver = webdriver.Chrome(options=options)
    sleep(3)
    login(driver)
    sleep(5)
    try:
        overall_salary = [ ]
        employers = [ ]
        overall_salary, employers = getSalaries(driver,keyword,location)
        df = pd.DataFrame(data=overall_salary)
        print(df)
        df2 = pd.DataFrame(data=employers)
        print(df2)
        connection = psycopg2.connect(
            host='dpg-cp5mkif79t8c73f18p3g-a.oregon-postgres.render.com',
            database='database_w735',
            user='database_w735_user',
            password='iqjLCkkaNAgNcNRdMu1OyLz2l71s5TBS'
        )
        #db = MySQLdb.connect(host="localhost",    # your host, usually localhost
        #             user="root",         # your username
        #             passwd="1234",  # your password
        #             db="database")
        #   
        print('Connected to PosgreSQL database')
        #c = db.cursor()
        cursor = connection.cursor()
        cursor.executemany("""
        INSERT INTO public.results (Job, Location, Confidence, Total_Salary, Base_Salary, Additional_Salary, Avg_Salary, Date_Added, Datetime)
        VALUES (%(Job)s, %(Location)s, %(Confidence)s, %(Total_Salary)s, %(Base_Salary)s,%(Additional_Salary)s,%(Avg_Salary)s, %(Date_Added)s, %(Datetime)s)""", overall_salary)
        cursor.executemany("""
        INSERT INTO public.salary_employers (Job, Location, Company, Salary, Datetime)
        VALUES (%(Job)s, %(Location)s, %(Company)s, %(Salary)s, %(Datetime)s)""", employers)
        connection.commit()
        #db.commit()
        print("Data inserted correctly!")
        if cursor:
            cursor.close()
        if connection:
            connection.close()
    except Exception as e:
        print(e)
        return("Error while connecting to PostgreSQL! Redirected to Home")
    driver.quit()
    display = "New record created successfully! Redirected to Home"
    return (display)
