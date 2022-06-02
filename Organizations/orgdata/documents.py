import os
import json
import requests


for filename in os.listdir(os.getcwd()):
   with open(os.path.join(os.getcwd(), filename), 'r') as f:
        if filename.endswith('.json'):
            f = open(filename)
            data = json.load(f)
            out = open("documents.sql", 'a')
            id = str(data['preFetchedData']['organization']['id'])
            root = "https://pdx.campuslabs.com/engage/api/discovery/organization/" + id + '/document?isFolder=false&orderByField=id&orderByDirection=descending'
            response = requests.get(root)
            data = response.text
            apiData = json.loads(data)
            for i in apiData['items']:
                #out.write(str(i) + "\n")
                docId = str(i['id'])
                documentTitle = i['documentName']
                documentLink = "https://pdx.campuslabs.com/engage/organization/" + filename[:-5] + "/documents/view/" + docId
                out.write("INSERT INTO organization_form (id, organization, title, link) VALUES (" + docId + ", " + id + ", '" + documentTitle + "', '" + documentLink + "');\n")
            f.close()

