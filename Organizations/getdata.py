import urllib.request
import json


with open('orglinks.txt') as file:
    for line in file:
        newFileName = line.rstrip()[47:]
        response = urllib.request.urlopen(line)
        data = ''
        for line_number, line in enumerate(response):
            # Because this is 0-index based
            if line_number == 49:
                data = line
            # Stop reading
            elif line_number > 49:
                break
    
        stripstart = data[33:]
        stripend = stripstart[:-12]
        data = stripend.decode()
        data = json.loads(data)
        json_formatted = json.dumps(data, indent=2)
        f = open('./orgdata/' + newFileName + '.json', 'a')
        f.write(json_formatted)
        f.close()
