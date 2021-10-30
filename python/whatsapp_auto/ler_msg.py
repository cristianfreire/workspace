# coding=UTF-8

import csv
import time
from datetime import datetime
import webbrowser

import pyautogui


csv.register_dialect('teste', delimiter=";", skipinitialspace=True, quoting=csv.QUOTE_ALL )
with open('mensagens.csv', encoding='utf-8') as mensagens:
    reader = csv.reader(mensagens, dialect='teste')
    for row in reader:
        data = row[2]
        hora = row[3]

        # ajustar a data e hora do sistema e colocar o relogio em 24h
        dataSistem = datetime.now().strftime('%d/%m')
        horaSistem = datetime.now().strftime('%H:%M')

        # deve ter no máximo de 5 mensagens por minuto para obedecer o intervalo de tempo
        if(dataSistem == data): 
        #and horaSistem == hora):
            pyautogui.hotkey('ctrl', 'w')
            mensagem = row[0]
            numero = row[1]
            numero.replace(" ", "%20")
            arquivo = row[4]
            new = 2
            url = "https://web.whatsapp.com/send?phone="+numero+"&text="+mensagem
            #driver.get(url)
            webbrowser.open(url, new=new)
            time.sleep(20)
            pyautogui.press('enter')
            pyautogui.hotkey('ctrl', 'w')

            

        #time.sleep(10)    


