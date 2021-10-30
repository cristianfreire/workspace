valor = 188
n100 = 0
n50 = 0
n20 = 0
n10 = 0
n5 = 0
n2 = 0
n1 = 0 
while valor > 0:
    if (valor >= 100):
        valor -= 100
        n100 += 1
    
    elif (valor >= 50):
        valor -= 50
        n50 += 1

    elif (valor >= 20):
        valor -= 20
        n20 += 1

    elif (valor >= 10):
        valor -= 10
        n10 += 1
    
    elif (valor >= 5):
        valor -= 5
        n5 += 1

    elif (valor >= 2):
        valor -= 2
        n2 += 1

    elif (valor >= 1):
        valor -= 1
        n1 += 1

print n100, " notas de 100"    
print n50, " notas de 50"
print n20, " notas de 20"    
print n10, " notas de 10"    
print n5, " notas de 5"    
print n2, " notas de 2"    
print n1, " notas de 1"    
