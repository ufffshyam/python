/.# def apply_twice(func, arg):
#     return func(func(func(arg)))

# def add_number(x):
#     return x + 5

# print(apply_twice(add_number, 10))

#lambda

def apply_one(func, arg1, arg2):
    return func(arg1, arg2)

print(apply_one(lambda x, y: x * y,  10, 20))
print((lambda x, y: x * y)(5, 10))

triple = lambda x : x * 3
double = lambda x : x * 2
print(triple(3), double(3))