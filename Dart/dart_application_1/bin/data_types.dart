/*

var costOfBook = 1000; // Variables using Camel Case style
num costOfBookNum = 1000; // Variables Using number data types

int age = 10; // int variables
double price = 10.02; // double variables

String bookName = "Walawe"; // String variables

bool isLoggedIn = false; // boolean variables

// dynamic can use all type data (not recommended)
dynamic dummy = 1;
dynamic dummy2 = "1";

// List

// Map

*/

main(){
  adder(a: 1, b: 2);
}

// Make debugger more easy
adder({required num a, required num b}){

  var sum = a+ b;

  print(sum);
}