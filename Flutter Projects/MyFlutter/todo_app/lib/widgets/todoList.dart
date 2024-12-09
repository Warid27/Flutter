import 'package:flutter/material.dart';

class TodoListBuilder extends StatefulWidget {
  List<String> todoList;
  void Function() updateLocalData;
  TodoListBuilder(
      {super.key, required this.todoList, required this.updateLocalData});

  @override
  State<TodoListBuilder> createState() => _TodoListBuilderState();
}

class _TodoListBuilderState extends State<TodoListBuilder> {
  // Fungsi trigger saat list item diklik
  void onItemClicked({required int index}) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.todoList.removeAt(index);
                  });
                  widget.updateLocalData();
                  Navigator.pop(context);
                },
                child: Text("Mark as done!")),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return (widget.todoList.isEmpty)
        ? Center(
            child: Text(
            "No Items on your todo list",
            style: TextStyle(fontSize: 20),
          ))
        : ListView.builder(
            itemCount: widget.todoList.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.startToEnd,
                background: Container(
                  color: Colors.green[300],
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.check),
                      )
                    ],
                  ),
                ),
                onDismissed: (direction) {
                  setState(() {
                    widget.todoList.removeAt(index);
                  });
                  widget.updateLocalData();
                },
                child: ListTile(
                  onTap: () {},
                  title: Text(widget.todoList[index]),
                ),
              );
            });
  }
}
