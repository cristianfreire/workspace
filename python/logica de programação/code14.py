x = input("Exponencial: ")
i = 0
serieTylor = 0
for i in range(9):
    valor = i
    if (valor == 0): fatorial = 1
    while (valor > 1):
        fatorial = fatorial * valor
        valor -= 1
    serieTylor += (x ** i) / fatorial

print serieTylor