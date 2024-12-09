import 'package:flutter/material.dart';

// STATEFUL WIDGET
class Statful extends StatefulWidget {
  const Statful({super.key});

  @override
  State<Statful> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Statful> {
  @override
  // INIT STATE
  void initState() {
    // TODO: implement initState
    super.initState();
  }

// Triggered everytime there is change in state
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// STATELESS WIDGET
class Statles extends StatelessWidget {
  const Statles({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
