lloyd = {
    "name": "Lloyd",
    "homework": [90.0, 97.0, 75.0, 92.0],
    "quizzes": [88.0, 40.0, 94.0],
    "tests": [75.0, 90.0]
}
alice = {
    "name": "Alice",
    "homework": [100.0, 92.0, 98.0, 100.0],
    "quizzes": [82.0, 83.0, 91.0],
    "tests": [89.0, 97.0]
}
tyler = {
    "name": "Tyler",
    "homework": [0.0, 87.0, 75.0, 22.0],
    "quizzes": [0.0, 75.0, 78.0],
    "tests": [100.0, 100.0]
}

students = [lloyd, alice, tyler]

for student in students:
    for data in student:
        print student['name']
        print student['homework']
        print student['quizzes']
        print student['tests']


def average(lst):
    length = len(lst)
    total = 0.0
    for val in lst:
        total += val
    return total / length
	
	
def get_average(student):
        return average(student['homework']) * 0.10 + average(student['quizzes']) * 0.30 + average(student['tests']) * 0.6
        
    
def get_letter_grade(score):
        if score >= 90: return 'A'
        if 80 <= score: return 'B'
        if 70 <= score: return 'C'
        if 60 <= score: return 'D'
        if score < 60: return 'F'
    
    
print get_letter_grade(get_average(lloyd))   



def get_class_average(class_list):
    total = []
    for student in class_list:
        total.append(get_average(student))
    return average(total) 

	
	
	
class_average = get_class_average(students)
print class_average
print get_letter_grade(class_average)




