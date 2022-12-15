import 'package:flutter/material.dart';

class flexiblescreen extends StatefulWidget {
  const flexiblescreen({super.key});

  @override
  State<flexiblescreen> createState() => _flexiblescreenState();
}

class _flexiblescreenState extends State<flexiblescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            color: Colors.yellow,
            child: const Center(child: Text('1')),
          ),
          Container(
            height: 600,
            width: double.infinity,
            color: Colors.red,
            child: const Center(child: Text('2')),
          ),
        ],
      ),
    ),
    );
  }
}
