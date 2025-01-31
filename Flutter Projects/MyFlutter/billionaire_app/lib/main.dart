import 'package:billionaire_app/add_money_button.dart';
import 'package:billionaire_app/balance_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

// State are the information that can be changed

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double balance = 0;

  void addMoney() async {
    setState(() {
      balance = balance + 500;
    });

    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Save an double value to 'balance' key.
    await prefs.setDouble('balance', balance);
  }

  @override
  void initState() {
    loadBalance();
    super.initState();
  }

  void loadBalance() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Save an double value to 'balance' key.
      balance = prefs.getDouble('balance') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Billionaire App!'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.blueGrey[700],
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BalanceView(balance: balance),
              AddMoneyButton(
                addMoneyFunction: addMoney,
              )
            ],
          ),
        ),
      ),
    );
  }
}
