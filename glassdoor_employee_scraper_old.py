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
import json
import numpy as np
import sqlite3
from sqlalchemy import create_engine
from datetime import datetime
import MySQLdb

# Login
def login():
    login = open('C:\\Users\\ricca\\Downloads\\Linkedin Project_1704\\uni_job_search\\login.txt') # this is your linkedin account login, store in a seperate text file. I recommend creating a fake account so your real one dosen't get flagged or banned
    line = login.readlines()
    email = line[0]
    password = line[1]
    driver.get("https://www.glassdoor.com/index.htm")
    '''driver.save_screenshot("C:\\Users\\rdiotti\\Downloads\\linkedin\\wetransfer_downloads_2024-03-27_0439\\Downloads\\Linkedin Profiles 2022 with Selenium & Beautiful Soup\\Linkedin Profiles 2022 with Selenium & Beautiful Soup\\ss.png")
    screenshot = Image.open("C:\\Users\\rdiotti\\Downloads\\linkedin\\wetransfer_downloads_2024-03-27_0439\\Downloads\\Linkedin Profiles 2022 with Selenium & Beautiful Soup\\Linkedin Profiles 2022 with Selenium & Beautiful Soup\\ss.png")
    screenshot.show()'''
    ignored_exceptions=(NoSuchElementException,StaleElementReferenceException,)
    your_element = WebDriverWait(driver, 2,ignored_exceptions=ignored_exceptions)\
                        .until(EC.presence_of_element_located((By.ID, "inlineUserEmail")))

    eml = driver.find_element(By.ID, "inlineUserEmail")
    eml.send_keys(email)
    '''ignored_exceptions=(NoSuchElementException,StaleElementReferenceException,)
    your_element = WebDriverWait(driver, 2,ignored_exceptions=ignored_exceptions)\
                        .until(expected_conditions.presence_of_element_located((By.XPATH,"//button[@data-test = 'email-form-button']")))
    nextbutton = driver.find_element(By.XPATH,"//button[@data-test = 'email-form-button']"); #ERRORE!
    try:
        nextbutton.click()
    except:
        nextbutton = driver.find_element(By.XPATH,"//button[@data-test = 'email-form-button']");
        nextbutton.click()'''
    ignored_exceptions=(NoSuchElementException,StaleElementReferenceException,)
    your_element = WebDriverWait(driver, 2,ignored_exceptions=ignored_exceptions)\
                        .until(EC.presence_of_element_located((By.ID, "inlineUserPassword")))
    passwd = driver.find_element(By.ID, "inlineUserPassword")
    passwd.send_keys(password)
    sleep(2)
    #loginbutton = driver.find_element(By.XPATH,"//button[@class='Button Button']")
    loginbutton = WebDriverWait(driver, 30).until(EC.element_to_be_clickable((By.XPATH,"//button[@type='submit']")))
    driver.execute_script("arguments[0].click();", loginbutton)

def getSalaries(keyword,location):
    driver.get("https://www.glassdoor.com/salaries/index.htm")
    searchbox = driver.find_element(By.NAME, "typedKeyword")
    searchbox.send_keys(keyword)
    try:
        sleep(4)
        li_search = driver.find_elements(By.XPATH,"//div[@class='HeroSearch_keywordInput__FPISi css-12sw74s e160mvh60']//ul[@class='suggestions down']//li")
        sleep(3)
        li_search[0].click()
    except Exception:
        pass
    '''
    actions=ActionChains(driver)
    actions.click(searchbox)
    actions.key_down(Keys.CONTROL).send_keys("a").key_up(Keys.CONTROL).send_keys(Keys.DELETE)
    actions.perform()
    '''
    locationbox = driver.find_element(By.NAME, "Autocomplete")
    locationbox.send_keys(location)
    try:
        sleep(4)
        li_location = driver.find_elements(By.XPATH,"//div[@class='HeroSearch_locationInput__R5mkt css-12sw74s e160mvh60']//ul[@class='suggestions down']//li")
        sleep(3)
        li_location[0].click()
    except Exception:
        pass
    '''
    actions=ActionChains(driver)
    actions.click(locationbox)
    actions.key_down(Keys.CONTROL).send_keys("a").key_up(Keys.CONTROL).send_keys(Keys.DELETE)
    actions.perform()'''
    searchbutton = driver.find_element(By.XPATH,"//button[@data-test = 'desktop-submit-button']")
    searchbutton.click()
    driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
    source = BeautifulSoup(driver.page_source,'html.parser')
    #print(source)
    '''
    overall_salary = [0]*9
    overall_salary[0] = keyword
    overall_salary[1] = location
    #last-update = source.find(xpath = //span[@data-test-id='20160501013618045733253'])
    if source.find('div', attrs={'data-test': 'occ-median-update-date'})  is not None:
        overall_salary[2] = source.find('div', attrs={'data-test': 'occ-median-update-date'}).text #update_date
    else:
        overall_salary[2] = 'None'#last update
    if driver.find_element(By.XPATH,"//aside[@data-test='confidence-badge']")  is not None:
        overall_salary[3] = driver.find_element(By.XPATH,"//aside[@data-test='confidence-badge']").text #confidence
    else:
        overall_salary[3] = 'None'#confidence
    if driver.find_element(By.XPATH,"//aside[@data-test='confidence-badge']")  is not None:
        overall_salary[4] = source.find('div', attrs={'data-test': 'total-pay'}).text #total pay
    else:
        overall_salary[4] = 'None'#total pay
    if source.find('div', attrs={'data-test': 'base-pay'})  is not None:
        overall_salary[5] = source.find('div', attrs={'data-test': 'base-pay'}).text #base pay
    else:
        overall_salary[5] = 'None'#base pay
    if source.find('div', attrs={'data-test': 'additional-pay-breakdown-only-one'})  is not None:
        overall_salary[6] = source.find('div', attrs={'data-test': 'additional-pay-breakdown-only-one'}).text #additional pay
    else:
        overall_salary[6] = 'None'#additional pay 
    if source.find('div', {'class': 'mb-xxsm d-flex align-items-baseline css-16x4inx ekyprye1'})  is not None:
        overall_salary[7] = source.find('div', {'class': 'mb-xxsm d-flex align-items-baseline css-16x4inx ekyprye1'}).text #avg pay
    else:
        overall_salary[7] = 'None'#avg pay
        overall_salary[8] = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
    '''
    overall_salary = [ ]
    #last-update = source.find(xpath = //span[@data-test-id='20160501013618045733253'])
    if source.find('div', attrs={'data-test': 'occ-median-update-date'})  is not None:
        update_date = source.find('div', attrs={'data-test': 'occ-median-update-date'}).text #update_date
    else:
        update_date = 'None'#update_date
    if driver.find_element(By.XPATH,"//aside[@data-test='confidence-badge']")  is not None:
        confidence = driver.find_element(By.XPATH,"//aside[@data-test='confidence-badge']").text #confidence
    else:
        confidence = 'None'#confidence
    if driver.find_element(By.XPATH,"//aside[@data-test='confidence-badge']")  is not None:
        total_salary = source.find('div', attrs={'data-test': 'total-pay'}).text #total pay
    else:
        total_salary = 'None'#total pay
    if source.find('div', attrs={'data-test': 'base-pay'})  is not None:
        base_salary = source.find('div', attrs={'data-test': 'base-pay'}).text #base pay
    else:
        base_salary = 'None'#base pay
    if source.find('div', attrs={'data-test': 'additional-pay-breakdown-only-one'})  is not None:
        additional_salary = source.find('div', attrs={'data-test': 'additional-pay-breakdown-only-one'}).text #additional pay
    else:
        additional_salary = 'None'#additional pay 
    if source.find('div', {'class': 'mb-xxsm d-flex align-items-baseline css-16x4inx ekyprye1'})  is not None:
        avg_salary = source.find('div', {'class': 'mb-xxsm d-flex align-items-baseline css-16x4inx ekyprye1'}).text #avg pay
    else:
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
'''
# parses a type 2 job row
def parseType2Jobs(alltext):
    jobgroups = []
    company = alltext[16][:len(alltext[16]) // 2]
    totalDurationAtCompany = alltext[20][:len(alltext[20]) // 2]

    # get rest of the jobs in the same nested list
    groups = []
    count = 0
    index = 0
    for a in alltext:
        if a == '' or a == ' ':
            count += 1
        else:
            groups.append((count, index))
            count = 0
        index += 1

    numJobsInJoblist = [g for g in groups if g[0] == 21 or g[0] == 22 or g[0] == 25 or g[0] == 26]
    for i in numJobsInJoblist:
        # full time/part time case
        if 'time' in alltext[i[1] + 5][:len(alltext[i[1] + 5]) // 2].lower().split('-'):
            jobgroups.append((alltext[i[1]][:len(alltext[i[1]]) // 2], alltext[i[1] + 8][:len(alltext[i[1] + 8]) // 2]))
        else:
            jobgroups.append((alltext[i[1]][:len(alltext[i[1]]) // 2], alltext[i[1] + 4][:len(alltext[i[1] + 4]) // 2]))
    return ('type2job', company, totalDurationAtCompany, jobgroups)

# parses a type 1 job row
def parseType1Job(alltext):
    jobtitle = alltext[16][:len(alltext[16]) // 2]
    company = alltext[20][:len(alltext[20]) // 2]
    duration = alltext[23][:len(alltext[23]) // 2]
    return ('type1job', jobtitle, company, duration)

# returns linkedin profile information
def returnProfileInfo(employeeLink):
    url = employeeLink
    print(url)
    driver.get(url)
    sleep(2)
    source = BeautifulSoup(driver.page_source, "html.parser")

    profile = []
    info = source.find('div', class_='mt2 relative')
    name = info.find('h1', class_='text-heading-xlarge inline t-24 v-align-middle break-words').get_text().strip()
    title = info.find('div', class_='text-body-medium break-words').get_text().lstrip().strip()
    profile.append(name)
    profile.append(title)
    sleep(1)
    experiences = source.find_all('li', class_='artdeco-list__item pvs-list__item--line-separated pvs-list__item--one-column')

    for x in experiences[1:]:
        alltext = x.getText().split('\n')
        print(alltext)
        startIdentifier = 0
        for e in alltext:
            if e == '' or e == ' ':
                startIdentifier+=1
            else:
                break
        # jobs, educations, certifications
        if startIdentifier == 16:
            # education
            if 'university' in alltext[16].lower().split(' ') or 'college' in alltext[16].lower().split(' ') or 'ba' in alltext[16].lower().split(' ') or 'bs' in alltext[16].lower().split(' '):
                profile.append(('education', alltext[16][:len(alltext[16])//2], alltext[20][:len(alltext[20])//2]))

            # certifications
            elif 'issued' in alltext[23].lower().split(' '):
                profile.append(('certification', alltext[16][:len(alltext[16])//2], alltext[20][:len(alltext[20])//2]))

        elif startIdentifier == 12:
            # Skills
            if (alltext[16] == '' or alltext[16] == ' ') and len(alltext) > 24:
                profile.append(('skill', alltext[12][:len(alltext[12])//2]))

    # experiences
    url = driver.current_url + '/details/experience/'
    driver.get(url)
    sleep(2)
    source = BeautifulSoup(driver.page_source, "html.parser")
    sleep(1)
    exp = source.find_all('li')
    for e in exp[13:]:
        row = e.getText().split('\n')
        if row[:16] == ['', '', '', '', '', '', ' ', '', '', '', '', '', '', '', '', '']:
            if 'yrs' in row[20].split(' '):
                profile.append(parseType2Jobs(row))
            else:
                profile.append(parseType1Job(row))

    return profile
'''
def exec(keywords,locations):
    service = Service(executable_path='./chromedriver.exe')
    options = webdriver.ChromeOptions()
    options.add_argument("start-maximized")
    options.add_argument('--ignore-certificate-errors-spki-list')
    options.add_argument('--ignore-ssl-errors')
    options.add_argument('log-level=3')
    driver = webdriver.Chrome(options=options)
    sleep(3)
    login()
    #keywords = ['Project Manager','Data analyst','Mechanical Engineer','Mechanical Engineer','Technician','Sales Manager','Assistant','Optometrist','Customer Engineer','Marketing Associate','Software Developer','IT Manager','Data Scientist','Actuary','Statistician','Management Analyst','Lawyer','Web Developer']
    #locations = ['United States','China','Germany','Japan','India','United Kingdom','France','Brazil','Italy']
    keywords = sys.argv[1]
    locations = sys.argv[2]
    sleep(5)
    for keyword in keywords:
        for location in locations:
            try:
                overall_salary = [ ]
                employers = [ ]
                overall_salary, employers = getSalaries(keyword,location)

                df = pd.DataFrame(data=overall_salary)
                print(df)
                df2 = pd.DataFrame(data=employers)
                print(df2)
    
                db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="1234",  # your password
                     db="database")

                c = db.cursor()

                c.executemany("""
                INSERT INTO results (Job, Location, Confidence, Total_Salary, Base_Salary, Additional_Salary, Avg_Salary, Date_Added, Datetime)
                VALUES (%(Job)s, %(Location)s, %(Confidence)s, %(Total_Salary)s, %(Base_Salary)s,%(Additional_Salary)s,%(Avg_Salary)s, %(Date_Added)s, %(Datetime)s)""", overall_salary)

                c.executemany("""
                INSERT INTO salary_employers (Job, Location, Company, Salary, Datetime)
                VALUES (%(Job)s, %(Location)s, %(Company)s, %(Salary)s, %(Datetime)s)""", employers)

                db.commit()
            except Exception as e:
                print(e)
                pass
    sleep(10)
    driver.quit()

if __name__ == "__main__":
    exec(sys.argv[1],sys.argv[2])