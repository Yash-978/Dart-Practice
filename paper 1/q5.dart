import 'dart:io';

class Calculator {
  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError("Cannot divide by zero.");
    }
    return a / b;
  }
}

void main() {
  Calculator calc = Calculator();
  try {
    stdout.write('Enter numerator: ');
    double num = double.parse(stdin.readLineSync()!);
    stdout.write('Enter denominator: ');
    double denom = double.parse(stdin.readLineSync()!);
    print("Result: ${calc.divide(num, denom)}");
  } catch (e) {
    print("Error: $e");
  }
}
