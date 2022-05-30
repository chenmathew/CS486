import time

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By


browser = webdriver.Chrome()


times = 17

counter = 1
counter2 = 0
f = open("buildlinks.txt", 'a')


while counter2 < 5:
    browser.get("https://www.pdx.edu/buildings/?search=&page=" + str(counter2))
    time.sleep(5)
    while counter < 13:
        a = browser.find_element(By.XPATH, "//*[@id='main-content']/div/div[2]/div[2]/div/div[2]/div[2]/div[2]/div[" + str(counter) + "]/div/span/div/div/div/a")
        f.write(a.get_attribute('href') + '\n')
        counter += 1
    counter = 1
    counter2 += 1

f.close()
browser.close()
