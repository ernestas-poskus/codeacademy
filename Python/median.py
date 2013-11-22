def median(lst):
    lst.sort()
    length = len(lst)
    r = length / 2.0
    
    if length % 2 != 0:
        me = (lst[int( r - 0.5)])
    else:
        me = (lst[int(r - 1)] + lst[int(r)])  / 2.0
    return me    