import 'dart:io';

class MathOperations {
  void divide(int a, int b) {
    try {
      if (b == 0) {
        throw Exception("Division by zero is not allowed.");
      }
      print("Result: ${a / b}");
    } catch (e) {
      print(e);
    }
  }
}

void main() {
  MathOperations mathOps = MathOperations();
  stdout.write("Enter numerator: ");
  int num = int.parse(stdin.readLineSync()!);
  stdout.write("Enter denominator: ");
  int denom = int.parse(stdin.readLineSync()!);
  mathOps.divide(num, denom);
}
