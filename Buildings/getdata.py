import json
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

browser = webdriver.Chrome()
data = {}
counter = 4
counter2 = 1
labels = ["address", "occupants", "features", "maps", "about", "details"]

with open('buildlinks.txt') as file:
    for line in file:
        # Name of building
        browser.get(line.rstrip("\n"))
        newFileName = line.rstrip()[46:]
        a = browser.find_element(By.XPATH, "//*[@id='main-content']/div/div[2]/article/div/div/div[3]/div[1]/div/div[1]/h2")
        b = browser.find_element(By.XPATH, "//*[@id='main-content']/div/div[2]/article/div/div/div[3]/div[1]/div/div[2]")
        data[labels[0]] = b.text
        while counter < 9:
            b = browser.find_element(By.XPATH, "//*[@id='main-content']/div/div[2]/article/div/div/div[" + str(counter) + "]/div/div[2]")
            #print(b)
            text2 = b.text.split("\n")
            #if labels[counter2] == "maps":
            #    counter3 = 1
            #    while counter3 < len(b):
            #        pdfs = browser.find_element(By.XPATH, "//*[@id='main-content']/div/div[2]/article/div/div/div[6]/div/div[2]/div[" + str(counter3) + "]/a")
            #        print(pdfs.get_attribute("href"))
            #else:
            data[labels[counter2]] = text2
            counter += 1
            counter2 += 1
        f = open('./buildingdata/' + newFileName + '.json', 'a')
        f.write(json.dumps(data, indent=4))
        f.close()
        counter2 = 1
        counter = 4
        data = {}

browser.close()
#//*[@id="main-content"]/div/div[2]/article/div/div/div[6]/div/div[2]/div[1]/a
#//*[@id="main-content"]/div/div[2]/article/div/div/div[6]/div/div[2]/div[2]/a
#//*[@id="main-content"]/div/div[2]/article/div/div/div[6]/div/div[2]/div[3]/a
#//*[@id="main-content"]/div/div[2]/article/div/div/div[6]/div/div[2]/div[1]/a