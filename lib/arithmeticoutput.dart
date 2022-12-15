import 'package:flutter/material.dart';

class Arithmetic extends StatefulWidget {
  const Arithmetic({super.key});

  @override
  State<Arithmetic> createState() => _ArithmeticState();
}

class _ArithmeticState extends State<Arithmetic> {
  @override
  Widget build(BuildContext context) {
    final value = ModalRoute.of(context)!.settings.arguments as int?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('output'),
      ),
      body: Center(
        child: Text(
          'Result is: $value',
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
