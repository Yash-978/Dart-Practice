import 'dart:io';

abstract class Shape {
  String? color;

  Shape(this.color);

  double calculateArea();
  void display();
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
    print('Circle Color: $color, Radius: $radius');
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
    print('Rectangle Color: $color, Length: $length, Width: $width');
  }
}

void main() {
  List<Shape> shapes = [Circle("Red", 5), Rectangle("Blue", 10, 5)];

  for (Shape shape in shapes) {
    shape.display();
    print('Area: ${shape.calculateArea()}');
    
  }
}
