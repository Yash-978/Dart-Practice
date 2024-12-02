import 'dart:io';

abstract class Animal {
  void sound();
  void move();
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }

  @override
  void move() {
    print("Dog runs");
  }
}

class Bird extends Animal {
  @override
  void sound() {
    print("Bird chirps");
  }

  @override
  void move() {
    print("Bird flies");
  }
}

void main() {
  List<Animal> animals = [Dog(), Bird()];

  for (var animal in animals) {
    animal.sound();
    animal.move();
    
  }
}
