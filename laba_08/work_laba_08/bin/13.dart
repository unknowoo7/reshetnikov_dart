class Employee {
  final String name;
  double salary;

  Employee({required this.name, required this.salary});

  Employee operator +(double increase) {
    if (increase < 0) {
      throw ArgumentError('Increase must be positive');
    }
    return Employee(name: name, salary: salary + increase);
  }

  Employee operator -(double decrease) {
    if (decrease < 0) {
      throw ArgumentError('Decrease must be positive');
    }
    if (salary - decrease < 0) {
      throw ArgumentError('Salary cannot be negative');
    }
    return Employee(name: name, salary: salary - decrease);
  }

  @override
  bool operator == (Object other) {
    if (identical(this, other)) return true;
    if (other is Employee) {
      return salary == other.salary;
    }
    return false;
  }

  @override
  int get hashCode => salary.hashCode;

  @override
  String toString() {
    return 'Employee(name: $name, salary: $salary)';
  }
}


void main() {
  var employee1 = Employee(name: 'Alice', salary: 50000);
  var employee2 = Employee(name: 'Bob', salary: 50000);
  var employee3 = Employee(name: 'Charlie', salary: 45000);

  var updatedEmployee1 = employee1 + 5000;
  print('Updated salary of ${updatedEmployee1.name}: ${updatedEmployee1.salary}');

  var updatedEmployee2 = employee2 - 3000;
  print('Updated salary of ${updatedEmployee2.name}: ${updatedEmployee2.salary}');

  print('Are ${employee1.name} and ${employee2.name} equal in salary? ${employee1 == employee2}');
  print('Are ${employee1.name} and ${employee3.name} different in salary? ${employee1 != employee3}');
}
