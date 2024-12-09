// OOP & Classes in Dart (Constructor, Properties, Method)

/*
// Primitive type objects
var bookName = "A Book";

// First Class Object
someFunction(){

}
*/

void main(){

/*
  var getBike = new Bike();
  getBike.color = "Blue";
  getBike.cc = 200;
  getBike.rideBike(); // Blue Bike of 200 CC is moving forward!

  var getAnotherBike = new Bike();
  getAnotherBike.color = "Purple";
  getAnotherBike.cc = 100;
  getAnotherBike.rideBike(); // Purple Bike of 100 CC is moving forward!
*/

  // Constructor
  var gettingBike = new BikeConstructor(color: "Green", cc: 10);
  gettingBike.rideBike();
}

// CLASSES
  // object: car, bike, laptop
  // properties: color = green
  // functionlity: bike = drive

  // nama class harus dimulai dengan Uppercase
class Bike {
  // Properties

  String color = "Green";
  num cc = 155;

  // Method

  void rideBike(){
    // Starting an engine
    // Moving forward
    // etc

    print("$color Bike of $cc CC is moving forward!");
  }

}

class BikeConstructor {

  String color;
  num cc;
  String? bikeNumber; // Optional Variabel

  BikeConstructor({required this.color, required this.cc, this.bikeNumber});

  void rideBike(){
    print("$color Bike of $cc CC is moving forward! $bikeNumber");
  }
}

/*
void aDummyFunction({required String something, String? optionalData}){

}
*/