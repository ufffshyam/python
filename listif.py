# li = []

# if len(li) > 0:
#     for i in li:
#         print(i)
# else:
#     print('empty')

li = ['root', 'moderator', 'administrator']
input_value = str(input('Enter your name: '))
if input_value not in li:
    print('Not foud in list')
    print('But we add your name in list')
    li.append(input_value)
    print('Welcome {}'.format(input_value))
else:
    print('Welcome {}'.format(input_value))