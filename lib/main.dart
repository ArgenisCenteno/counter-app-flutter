import 'package:flutter/material.dart';
import 'package:hello_word_app/presentation/screens/counter_functions.dart';
//import 'package:hello_word_app/presentation/screens/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
          ),
      home: const CounterFunctionsScreen()
    );
  }
}
