import time

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By


browser = webdriver.Chrome()

browser.get("https://pdx.campuslabs.com/engage/organizations")
time.sleep(5)

times = 17

while (times):
    browser.find_element(By.XPATH, "//*[@id='react-app']/div/div/div/div[2]/div[3]/div/div[2]/div[2]/button").click()
    time.sleep(2)
    times -= 1

counter = 1
f = open("orglinks.txt", 'a')


while counter < 175:
    a = browser.find_element(By.XPATH, "//*[@id='org-search-results']/ul/div/div[" + str(counter) + "]/a")
    f.write(a.get_attribute('href') + '\n')
    counter += 1

f.close()
browser.close()
