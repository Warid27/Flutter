// Inheritance

void main(){

  var myBike = new CustomBike(color: "Red", cc: 100);
  myBike.ride();
}

// inheritance using extends
class CustomBike extends Bike{

  CustomBike({required super.color, required super.cc});

  @override
  void ride(){
    print("This is overriden method!");
  }

}

class Bike{

  String color;
  num cc;

  Bike({required this.color, required this.cc});

  void ride(){
    print("Bike is moving forward");
  }
}