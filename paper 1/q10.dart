class Vehicle {
  String? model;
  double? speed;

  Vehicle(this.model, this.speed);

  double calculateTime(double distance) {
    return distance / speed!;
  }

  void displayDetails() {
    print("Model: $model, Speed: $speed");
  }
}

class Car extends Vehicle {
  Car(String model, double speed) : super(model, speed);

  @override
  void displayDetails() {
    print("Car - Model: $model, Speed: $speed");
  }
}

class Bike extends Vehicle {
  Bike(String model, double speed) : super(model, speed);

  @override
  void displayDetails() {
    print("Bike - Model: $model, Speed: $speed");
  }
}

void main() {
  Vehicle vehicle1 = Car("Toyota", 100);
  Vehicle vehicle2 = Bike("Yamaha", 80);

  List<Vehicle> vehicles = [vehicle1, vehicle2];

  for (var vehicle in vehicles) {
    vehicle.displayDetails();
  }
}
