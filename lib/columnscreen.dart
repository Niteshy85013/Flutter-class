import 'package:flutter/material.dart';

class Columnscreen extends StatefulWidget {
  const Columnscreen({super.key});

  @override
  State<Columnscreen> createState() => _ColumnscreenState();
}

class _ColumnscreenState extends State<Columnscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button')),
            ElevatedButton(onPressed: () {}, child: const Text('Button')),
            ElevatedButton(onPressed: () {}, child: const Text('Button')),
          ],
        ),
      ),
    );
  }
}
