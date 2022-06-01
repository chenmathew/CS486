import os
import json

for filename in os.listdir(os.getcwd()):
   with open(os.path.join(os.getcwd(), filename), 'r') as f:
        if filename.endswith('.json'):
            f = open(filename)
            data = json.load(f)
            out = open("socialmedia.sql", 'a')

            if data["preFetchedData"]['organization']["socialMedia"]["externalWebsite"] != "" and data["preFetchedData"]['organization']["socialMedia"]["externalWebsite"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["externalWebsite"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["flickrUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["flickrUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["flickrUrl"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["googleCalendarUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["googleCalendarUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["googleCalendarUrl"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["googlePlusUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["googlePlusUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["googlePlusUrl"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["instagramUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["instagramUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["instagramUrl"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["linkedInUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["linkedInUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["linkedInUrl"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["pinterestUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["pinterestUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["pinterestUrl"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["tumblrUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["tumblrUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["tumblrUrl"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["youtubeUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["youtubeUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["youtubeUrl"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["facebookUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["facebookUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["facebookUrl"] + "');\n")
            if data["preFetchedData"]['organization']["socialMedia"]["twitterUrl"] != "" and data["preFetchedData"]['organization']["socialMedia"]["twitterUrl"] != None:
                out.write("INSERT INTO groupproject.organization_socials (id, link) VALUES (" + str(data['preFetchedData']['organization']['id']) + ", '" + data["preFetchedData"]["organization"]["socialMedia"]["twitterUrl"] + "');\n")
            f.close()