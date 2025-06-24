//Abstract class Vehicle
abstract class Vehicle {
  int? _speed;

  void move();

  void setSpeed(int speed) {
    if (speed >= 0) {
      _speed = speed;
    } else {
      print("Speed cannot be negative!");
    }
  }

  int? get speed => _speed;
}

//Subclass Car that extends Vehicle
class Car extends Vehicle {
  @override
  void move() {
    if (_speed != null) {
      print("The car is moving at $_speed km/h");
    } else {
      print("Please Set Speed");
    }
  }
}

// Main function
void main() {
  Car myCar = Car();
  myCar.setSpeed(100);
  myCar.move();
}
