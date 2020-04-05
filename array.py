#Array functions make it easier to loo
list_1 = ['one', 'two', 'three']
list_1.append('four') #simply add
list_1.insert(0, 'start') # add with index
list_1.remove('start') # remove value but not store for future reference
a = list_1.pop(0) # use for remove with index but store for future reference
print(a)
print(list_1[0], list_1[1], list_1[2], list_1[-2].title(), len(list_1))

