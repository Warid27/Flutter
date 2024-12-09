// List => Collection of data
// Mirip Array le

// Jalankan di "https://dartpad.dev/"

/*
String fruit = "Apple";

List<String> fruits = ["Apple", "Orange", "Banana"];
List<int> angka = [1, 2, 3];
List<dynamic> angkaDanstring = [1, "Apple", 3];
*/

void main() {
  List<String> todoList = ["Mandi", "Sikat Gigi", "Minum Air"];

  todoList.add("Belanja");

  // Indexes...
  // Index always starts with 0
  todoList.insert(0, "Baca Buku");
  print(todoList.length);
  print(todoList[1]); // Sikat Gigi

  todoList.remove("Sikat Gigi");
  todoList.removeAt(1);

  print(todoList); // [Baca Buku, Minum Air, Belanja]
}
