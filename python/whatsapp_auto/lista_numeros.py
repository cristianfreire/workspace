import csv
import time
from datetime import datetime
import webbrowser

csv.register_dialect('teste', delimiter=";", skipinitialspace=True, quoting=csv.QUOTE_ALL)
with open('mensagens.csv', encoding='utf-8') as mensagem:
    reader =csv.reader(mensagem, dialect='teste')
    numeros = []
    for row in reader:
        numero = row[1]
        numeros.append(numero)


print(numeros)