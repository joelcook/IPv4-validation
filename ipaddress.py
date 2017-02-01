'''
@author Joel Cook
created 11/29/2016
'''

import sys
import os
import re

fileName = input('Please enter the name of the file containing the input IPv4 addresses:')
fileObject = open(fileName,"r")
allLines = fileObject.readlines()
fileObject.close()
#valid ip address can only go to 255 so if 25 then the next character can also only be 0-5
newRegex = re.compile("^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$")
for eachLine in allLines:
    if newRegex.match(eachLine):
        print ("Valid IPv4 address found: ",eachLine)
    else:
        print("ERROR - invalid IPv4 address found: ",eachLine)
