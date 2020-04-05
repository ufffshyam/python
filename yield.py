def apply_one(i):
    while i > 0:
        yield 1
        i -= 1

print(list(apply_one(100)))

def apply_one2():
    word = ''
    for i in 'shyam':
        word += i
        yield word

print(list(apply_one2()))