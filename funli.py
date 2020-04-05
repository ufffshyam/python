def users(names):
    # for name in names:
    #     print('Hello {}'.format(name.title()))
    l2 = []
    while names:
        l3 = names.pop()
        l2.append(l3)
        print(l2)

names = ['shyam', 'manish', 'gaurav']
users(names)


