users = ('shyam', 'gaurav', 'manish', 'charru')
passwords = ('123','1234', '12345', '123456')
li = []
li.append(users)
li.append(passwords)
del li[0]
print(li[0].index('1234'))

