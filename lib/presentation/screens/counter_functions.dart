import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  //Iniciar variable en 0

  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter Functions',
            style: TextStyle(fontSize: 15),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    number = 0;
                  });
                },
                icon: const Icon(Icons.refresh_rounded)),
          ],
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
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
          ],
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  number++;
                });
              },
            ),
            SizedBox(width: 10),
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  if (number == 0) return;
                  number--;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
