import os
import json
from unicodedata import category
counter = 0

for filename in os.listdir(os.getcwd()):
   with open(os.path.join(os.getcwd(), filename), 'r') as f:
        if filename.endswith('.json'):
            f = open(filename)
            data = json.load(f)
            out = open("categories.sql", 'a')
            for i in data['value']:
                id = i['Id']
                cat = ""
                if i['CategoryNames'] and i['CategoryNames'][0]:
                    cat = i['CategoryNames'][0]
                else:
                    cat = "null"
                out.write("INSERT INTO organization_categories (id, category) VALUES (" + id + ", " + cat + ");\n")
                print("INSERT INTO organization_categories (id, category) VALUES (" + id + ", " + cat + ");")
            f.close()

