grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def print_grades(grades):
    for grade in grades:
        print grade

def grades_sum(grades):
    total = 0
    for grade in grades: 
        total += grade
    return total
    
def grades_average(grades):
    sum_of_grades = grades_sum(grades)
    average = sum_of_grades / len(grades)
    return average

def grades_variance(scores, average):
    variance = 0
    i = 0
    x = 0
    while i < len(scores):
        x += (scores[i] - average)**2
        i += 1
    variance = x / len(scores)
    return variance
    
def grades_std_deviation(variance):
    std_dev = variance**.5
    return std_dev




print print_grades(grades)
print grades_sum(grades)
avg = grades_average(grades)
print avg
var = grades_variance(grades, avg)
print var
print grades_std_deviation(var)

