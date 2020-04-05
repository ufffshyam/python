array = enumerate(['Shyam', 'Gupta'])
mydict = {'key1': 'Shyam', 'key2': 'Kumar', 'key3': 'Gupta'}
for i, (key, value) in enumerate(mydict.items()):
    print(i, key, value)

name = enumerate('Shyam')
for i, key in name:
    print(i, key)