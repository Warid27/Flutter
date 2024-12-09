import 'package:flutter/material.dart';
import 'package:helloflutter/body_container.dart';

void main() {
  runApp(const MyApp());
}

// CUSTOM WIDGET
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            centerTitle: true,
            title: const Text(
              "Hello Flutter",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: body_container()),
    );
  }
}
