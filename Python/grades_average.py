grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def grades_sum(scores):
    sum = 0
    for s in scores:
        sum += s
    return sum
    
def grades_average(grades):
    sum = grades_sum(grades)
    return sum / float(len(grades))
    
print grades_sum(grades)
print grades_average(grades)