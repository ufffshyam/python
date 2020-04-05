def prime_no(n):
    for j in range(2, n):
        prime = True
        for i in range(2, j):
            if j % i == 0:
                prime = False

        if(prime):
            print(f'{j} is prime no')    
        else:
            print(f'{j} is not prime no')
    

# n = int(input('Print max prime no : '))
# print(prime_no(n))

# 0 1 2 3 5 8
#fabonacci
def fabonacci(n):
    first = 1
    second = 2
    # for i in range(0, n):
    while first < 40:
       print(first)
       new = first + second
       first = second
       second = new
      
 
n = int(input('Print max prime no : '))
print(fabonacci(n))