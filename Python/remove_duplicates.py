def remove_duplicates(lst):
    res = []
    for item in lst:
        if item not in res:
            res.append(item)
    return res