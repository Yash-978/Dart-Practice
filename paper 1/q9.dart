class Vehicle {
  String? model;
  double? speed;

  Vehicle(this.model, this.speed);

  double calculateTime(double distance) {
    return distance / speed!;
  }
}

class Car extends Vehicle {
  Car(String model, double speed) : super(model, speed);
}

class Bike extends Vehicle {
  Bike(String model, double speed) : super(model, speed);
}

void main() {
  Vehicle car = Car("Toyota", 80);
  Vehicle bike = Bike("Yamaha", 60);

  double distance = 120;

  print("Time for Car to cover $distance km: ${car.calculateTime(distance)} hours");
  print("Time for Bike to cover $distance km: ${bike.calculateTime(distance)} hours");
}
