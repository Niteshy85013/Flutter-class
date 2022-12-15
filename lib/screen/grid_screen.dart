import 'package:flutter/material.dart';

class gridscreen extends StatefulWidget {
  const gridscreen({super.key});

  @override
  State<gridscreen> createState() => _gridscreenState();
}

class _gridscreenState extends State<gridscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: [
          for (int i = 1; i <= 10; i++) ...{
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '$i',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            ),
          },
        ],
      ),
    );
  }
}
