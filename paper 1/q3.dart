import 'dart:io';

abstract class Shape {
  String? color;
  
  Shape(this.color);

  double calculateArea();

  void display() {
    print('Color: $color');
  }
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius) : super(color);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  void display() {
    super.display();
    print('Radius: $radius');
  }
}

class Rectangle extends Shape {
  double length, width;

  Rectangle(String color, this.length, this.width) : super(color);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  void display() {
    super.display();
    print('Length: $length, Width: $width');
  }
}

void main() {
  int n;
  stdout.write('Enter number of shapes: ');
  n = int.parse(stdin.readLineSync()!);

  List<Shape> shapes = [];
  for (int i = 0; i < n; i++) {
    stdout.write('Enter shape type (circle/rectangle): ');
    String? shapeType = stdin.readLineSync();
    
    if (shapeType == 'circle') {
      stdout.write('Enter color: ');
      String? color = stdin.readLineSync();
      stdout.write('Enter radius: ');
      double radius = double.parse(stdin.readLineSync()!);
      shapes.add(Circle(color!, radius));
    } else if (shapeType == 'rectangle') {
      stdout.write('Enter color: ');
      String? color = stdin.readLineSync();
      stdout.write('Enter length: ');
      double length = double.parse(stdin.readLineSync()!);
      stdout.write('Enter width: ');
      double width = double.parse(stdin.readLineSync()!);
      shapes.add(Rectangle(color!, length, width));
    }
  }

  for (int i = 0; i < n; i++) {
    shapes[i].display();
    print('Area: ${shapes[i].calculateArea()}');
    print('-------------------------------');
  }
}

