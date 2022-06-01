import os
import json

for filename in os.listdir(os.getcwd()):
   with open(os.path.join(os.getcwd(), filename), 'r') as f:
        if filename.endswith('.json'):
            f = open(filename)
            data = json.load(f)
            out = open("logos.sql", 'a')
            id = str(data['preFetchedData']['organization']['id'])
            icon = str(data["preFetchedData"]["organization"]["profilePicture"]) 
            name = str(data["preFetchedData"]["organization"]["name"])
            abb = str(data["preFetchedData"]["organization"]["shortName"])
            desc = str(data["preFetchedData"]["organization"]["description"]) 
            name = name.replace("'", "&#39;")
            name = name.replace("\"", "&#34;")
            abb = abb.replace("'", "&#39;")
            abb = abb.replace("\"", "&#34;")
            desc = desc.replace("'", "&#39;")
            desc = desc.replace("\"", "&#34;")
            out.write("INSERT INTO groupproject.organization (id, icon, name, abbreviation, description) VALUES (" + id + ", 'https://se-images.campuslabs.com/clink/images/" + icon + "?preset=md-sq'" + ", '" + name + "', '" + abb + "', '" + desc + "');\n")
            f.close()

