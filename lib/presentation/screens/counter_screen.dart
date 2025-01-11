import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //Iniciar variable en 0

  int number = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: const Text(
          'Counter Screen',
          style: TextStyle(fontSize: 15),
        )),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$number',
            style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
           Text(number == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
              number++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    
    );
  }
}
