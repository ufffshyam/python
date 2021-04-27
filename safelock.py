def sum_pass(total):
    if d['one'] + d['two'] + d['thr'] + d['fou'] + d['fiv'] == total:
        return True

def pass_check(d):
    if d['one'] + d['two'] == 17 and d['one'] + d['thr'] == 14 and\
        d['fou'] * 3 == d['thr'] and d['fiv'] == 0 and sum_pass(25):
        return True
#89620
for code in range(0, 99999):
    code = str(code).zfill(5)
    d = {}
    d['one'] = int(code[0])
    d['two'] = int(code[1])
    d['thr'] = int(code[2])
    d['fou'] = int(code[3])
    d['fiv'] = int(code[4])
    if pass_check(d):
        print(code)