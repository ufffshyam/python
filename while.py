# string_list = 'shyam'

# i = 0
# while i < len(string_list):
#     print(string_list[i])
#     i += 1

i = 0
while i < 10:
    i += 1
    if i % 2 == 0:
        print('Even => {}'.format(i))
        break #use break
    else:
        continue #use continue
        print('Oddd => {}'.format(i))


#dictionary
# my_list = ['shyam', 'kumar', 'gupta']
# my_new_list = []
# while my_list:
#     current_item = my_list.pop()
#     print('index is : ' + current_item)
#     my_new_list.append(current_item)
# print(my_list, my_new_list)


#while in 
# my_list3 = ['shyam', 'kumar', 'gupta', 'shyam']
 
# while 'shyam' in my_list3:
#     print(my_list3)

#login
# list4 = []
# end_list = ['end', 'exit']

# while -1:
#     name = input('Enter your name : ')
#     if name in end_list:
#         print(f'Entered list : {list4}')
#         break
#     else:
#         list4.append(name)


#form
list1 = []
while True:
    dict1 = {} 
    dict1['name'] = input('Enter your name : ')
    dict1['age'] = input('Enter your age : ')
    list1.append(dict1)
    if input('If you want to enter information type yes/no : ') == 'n':
       break
print(list1)




    

    

    