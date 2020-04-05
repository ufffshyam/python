# def test(name):
#     print('Hi {}'.format(name))

# test(3)

# def sum_numbers(a, b):
#     return a + b
# def sub_numbers(a, b):
#     return a - b
# def multi_numbers(a, b):
#     return a * b
# def div_numbers(a, b):
#     return a / b
# print(sum_numbers(1, 2))
# print(sub_numbers(1, 2))
# print(multi_numbers(1, 2))
# print(div_numbers(1, 2))

def isphonenumber(text):
    if len(text) != 12:
        return False
    for i in range(0, 3):
        if not text[i].isdecimal():
            return False
    if text[3] != '-':
        return False
    for i in range(4, 7):
        if not text[i].isdecimal():
            return False
    if text[7] != '-':
        return False
    for i in range(8, 12):
        if not text[i].isdecimal():
            return False
    return True

# print(isphonenumber('000-000-0000'))

message = 'Indian tibeten border police force phone no : 415-201-1500 and another one is : 897-123-7845'

for i in range(len(message)):
    text = message[i:i+12]
    if isphonenumber(text):
        print('Phone no. found: ' + text)

print('Done')
