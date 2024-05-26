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
from PIL import Image
import pandas as pd
import json
import numpy as np
import requests
import xlsxwriter

service = Service(executable_path='./chromedriver.exe')
options = webdriver.ChromeOptions()
options.add_argument("start-maximized")
options.add_argument('--ignore-certificate-errors-spki-list')
options.add_argument('--ignore-ssl-errors')
options.add_argument('log-level=3')
driver = webdriver.Chrome(options=options)
driver.get("https://www.glassdoor.com/salaries/index.htm")
searchbox = driver.find_element(By.NAME, "typedKeyword")
searchbox.send_keys(keyword)
sleep(1)
listsearch = []
li_search = driver.find_elements(By.XPATH,"//div[@class='HeroSearch_keywordInput__FPISi css-12sw74s e160mvh60']//ul[@class='suggestions down']//li")
for li in li_search:
    listsearch.append(li.text)
sleep(1)
actions=ActionChains(driver)
actions.click(searchbox)
actions.key_down(Keys.CONTROL).send_keys("a").key_up(Keys.CONTROL).send_keys(Keys.DELETE)
actions.perform()
searchbox.send_keys(listsearch[0])

locationbox = driver.find_element(By.NAME, "Autocomplete")
locationbox.send_keys(location)
sleep(1)
listlocation = []
li_location = driver.find_elements(By.XPATH,"//div[@class='HeroSearch_locationInput__R5mkt css-12sw74s e160mvh60']//ul[@class='suggestions down']//li")
for li in li_location:
    listlocation.append(li.text)
sleep(1)
actions=ActionChains(driver)
actions.click(locationbox)
actions.key_down(Keys.CONTROL).send_keys("a").key_up(Keys.CONTROL).send_keys(Keys.DELETE)
actions.perform()
locationbox.send_keys(listlocation[0])