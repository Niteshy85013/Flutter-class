import 'package:flutter/material.dart';

class Snackbarscreen extends StatefulWidget {
  const Snackbarscreen({super.key});

  @override
  State<Snackbarscreen> createState() => _SnackbarscreenState();
}

class _SnackbarscreenState extends State<Snackbarscreen> {
  _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: const Text('Hellow World'),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {},
          textColor: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              _showSnackBar();
            },
            child: const Text('Show SnackBar'),
          ),
        ),
      ),
    );
  }
}
