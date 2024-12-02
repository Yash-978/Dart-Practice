abstract class Shape {
  double calculateArea();
  void draw();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  void draw() {
    print("Drawing a Circle with radius $radius");
  }
}

class Rectangle extends Shape {
  double length, width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  void draw() {
    print("Drawing a Rectangle with length $length and width $width");
  }
}

void main() {
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(4, 7);

  List<Shape> shapes = [circle, rectangle];

  for (var shape in shapes) {
    shape.draw();
    print("Area: ${shape.calculateArea()}");
  }
}
