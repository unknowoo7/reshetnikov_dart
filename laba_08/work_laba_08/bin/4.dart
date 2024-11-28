/**
 * Создайте класс Student с атрибутами name и grade. Перегрузите операции сравнения, 
 * для их использования при сортировке списка студентов по их оценкам, а если у двух 
 * студентов оценки совпадают, то сортировка должна производиться по алфавиту (по имени студента). 
 */

class Student implements Comparable<Student> {
  final String name;
  final double grade;

  Student({
    required this.name,
    required this.grade,
  });

  @override
  int compareTo(Student other) {
    if (grade == other.grade) {
      return name.compareTo(other.name);
    }
    
    return other.grade.compareTo(grade);
  }

  @override
  String toString() {
    return 'Student(name: $name, grade: $grade)';
  }
}

void main() {
  var students = [
    Student(name: 'Alice', grade: 85.0),
    Student(name: 'Bob', grade: 92.0),
    Student(name: 'Charlie', grade: 85.0),
    Student(name: 'Diana', grade: 95.0),
    Student(name: 'Eve', grade: 92.0),
  ];

  students.sort();

  print('Sorted students:');
  for (var student in students) {
    print(student);
  }
}
