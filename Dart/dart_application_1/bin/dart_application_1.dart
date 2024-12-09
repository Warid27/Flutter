// Functions In Dart
// Collection of logic

// Must have main function
main(){
  adder();
  adder2(2, 5);
  adder3(a: 10, b: 5);
}

// Function add two numbers
adder(){
  // Function Body...
  // Variables

  var a = 2;
  var b = 8;

  print(a + b);
}

// Using Arguments
adder2(a, b){
  var sum = a + b;
  print(sum);
}

// Using Arguments But Have to Define the Variables
// DYNAMIC FUNCTION
adder3({a, b}){
  var sum = a + b;
  print(sum);
}

