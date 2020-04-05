dict = {
    "shyam" : ["php", "mean", "python"],
    "gaurav" : { 0 : 'php', 1 : 'mean', 2 : 'blockchain'},
    "manish" :  ("php"),
}
# for key in dict.keys():
#     print(key)

# print(dict.keys())
# print(dict.values())
# print(dict.items())

# print(dict.get('shyam1', 'not exist'))

# del dict['shyam']
# a = dict.pop('shyam')
# print(dict, a)
# dict2 = dict.copy()
# dict2 = {}
# dict2.update(dict)
# print(dict2)

input_value = str(input('Please enter name : '))
# for key,value in dict.items():
#     if key == input_value:
#         print(dict[key])

my_list = [v for k,v in dict.items() if k == input_value]
print(my_list)
