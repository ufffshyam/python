# li = list(range(1, 11))
# print(li)


# li = [1,2,3,4,5,6,7,8,9,10]
# print(f'min : {min(li)}')
# print(f'max : {max(li)}')
# print(f'sum : {sum(li)}')

# li2 = list(range(1, 10))
# print(f'min : {min(li2)}')
# print(f'max : {max(li2)}')
# print(f'sum : {sum(li2)}')

li3 = [i**2 for i in range(1, 10)]
print(li3)

li4 = ['hi'] * 2
print(li4)

li5 = [i *4 for i in 'shyam']
print(li5)

#same as 
li6 = []
for i in 'shyam':
    li6.append(i*4)
print(li6)

li7 = list(map(abs, [1, 2, -3, -50]))
print(li7)

# def test(arr):
#     print(arr)

# li8 = list(map(test, [1, 2, -3, -50]))
# print(li8)
