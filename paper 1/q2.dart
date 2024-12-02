/**Define a class named `Employee` with private attributes `name`, `salary`, and `designation`. Encapsulate these attributes using appropriate access specifiers. Implement public member functions to set and get the values of these attributes. Demonstrate the encapsulation concept by accessing these attributes through the member functions. */
import 'dart:io';

class Employee {
  String? name, designation;
  double? salary;

  Employee(this.name, this.designation, this.salary);

  void getDetail() {
    print('Name: $name');
    print('Designation: $designation');
    print('Salary: \$${salary}');
  }
}

void main() {
  int n;
  stdout.write('Enter number of employees: ');
  n = int.parse(stdin.readLineSync()!);

  String? name, designation;
  double? salary;

  List<Employee> employees = [];
  for (int i = 0; i < n; i++) {
    print('Enter details for employee ${i + 1}:');
    stdout.write("Enter name: ");
    name = stdin.readLineSync();
    stdout.write("Enter designation: ");
    designation = stdin.readLineSync();
    stdout.write("Enter salary: ");
    salary = double.parse(stdin.readLineSync()!);
    employees.add(Employee(name, designation, salary));
  }

  for (int i = 0; i < n; i++) {
    print('Details of Employee ${i + 1}:');
    employees[i].getDetail();
    print('-------------------------------');
    
  }
}
