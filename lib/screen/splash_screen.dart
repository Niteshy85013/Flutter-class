import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/loginscreen');
    });
    super.initState();
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text('Splash Screen'),
        ),
        SizedBox(
          height: 8,
        ),
        Center(child: CircularProgressIndicator()),
        SizedBox(height: 8),
        Text(
          'V1.0.0',
          style: TextStyle(fontSize: 18),
        )
      ],
    ));
  }
}
