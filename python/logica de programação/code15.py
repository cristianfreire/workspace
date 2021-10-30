x = int(input("Termo1: "))
y = int(input("Termo2: "))
n = 0
print x
print y
for i in range(3,10):
    if (i%2 == 0):
        n = x - y
    else:
        n = x + y
    
    print n
    x = y
    y = n
 