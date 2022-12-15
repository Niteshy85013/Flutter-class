 import 'package:flutter/material.dart';

class ExerciseClassScreen extends StatefulWidget {
  const ExerciseClassScreen({super.key});

  @override
  State<ExerciseClassScreen> createState() => _ExerciseClassScreenState();
}

class _ExerciseClassScreenState extends State<ExerciseClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Rows and column",
      )),
      body: Container(
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.blue,
                  child: const Center(
                      child: Text(
                    "container 1",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.red,
                  child: const Center(
                      child: Text(
                    "container 2",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.blue,
                  child: const Center(
                      child: Text(
                    "container 3",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ]),
            Expanded(
              child: Container(
                height: 60,
                color: Colors.blue,
                child: const Center(
                    child: Text("container 3",
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Expanded(
              child: Container(
                height: 60,
                color: Colors.yellow,
                child: const Center(
                    child: Text("container 3",
                        style: TextStyle(color: Colors.red))),
              ),
            ),
            Expanded(
              child: Container(
                height: 60,
                color: Colors.blue,
                child: const Center(
                    child: Text(
                  "container 3",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
