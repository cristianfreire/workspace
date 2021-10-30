horas = int(input("Horas: "))
sal = 0
salExcedente = 0

if (horas < 50):
    sal += horas * 10

if (horas > 50 ):
    salExcedente = horas - 50
    horas -= salExcedente
    sal = horas * 10
    salExcedente *= 20
   
print sal+salExcedente
print salExcedente