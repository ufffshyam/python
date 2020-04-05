def add_five(x):
    return x + 5

li = [5, 10, 15, 20]
# print(list(map(add_five, li)))
print(list(filter(lambda x: x % 2 == 0, li)))
print(list(filter(lambda x: True if (x % 2 == 0) else False, li)))  