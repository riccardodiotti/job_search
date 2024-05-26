import requests
from time import sleep
from bs4 import BeautifulSoup
from chromedriver_py import binary_path
from selenium import webdriver
import pandas as pd
import json

driver = webdriver.Chrome()
sleep(5)
driver.maximize_window()
sleep(5)
driver.get("https://www.linkedin.com/")
sleep(5)

cookies_dict = {}
for cookie in driver.get_cookies():
        cookies_dict[cookie['name']] = cookie['value']
        

driver.close()

resp = requests.get("https://www.linkedin.com/company/twitter",
                     cookies=cookies_dict,
                     headers={'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36',
                              'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
                                                   'accept-encoding': 'gzip, deflate, br',
                                                   'accept-language': 'en-US,en;q=0.9',
                                                   'upgrade-insecure-requests': '1',
                                                   'scheme': 'https'})
        
html = resp.text

HtmlPath = "Downloads/1.html"
page_fun = open(HtmlPath,'w',encoding='utf-8')
page_fun.write(html)
page_fun.close()

