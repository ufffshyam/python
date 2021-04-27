# def build_pro(fname, lname, **user_info):
#     li = {}
#     li['first_name'] = fname
#     li['last_name'] = lname
#     for k,v in user_info.items():
#         li[k] = v
    
#     return li


# print(build_pro('shyam', 'gupta', father_name='jitender', mother_name="krishnawati Devi", age=23))
# d = dict(fname="shyam")
# print(d)

def build_pro(*user_info):
    return user_info

def build_pro2(*user_info):
    return user_info

# print(build_pro('shyam', 'kumar', 'gupta', 'jitender', 'krishnawati devi'))

print(list(['shyam', 'dfd']))
print(tuple(['dsfdsf', 'dfdf']))
print(dict(fname="shyam", l_name="gupta"))