import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int first = 0, second = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  first = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                      )),
                  labelText: 'Enter First Number',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (value) {
                  second = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                      )),
                  labelText: "Enter Second Number",
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first + second;
                    });
                    Navigator.pushNamed(context, '/Arithmetic',
                        arguments: result);
                  },
                  child: const Text('Add'),
                ),
              ),
              Text('Sum is: $result'),
            ],
          )),
    );
  }
}
