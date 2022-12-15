import 'package:flutter/material.dart';
import 'package:test/listtilescreen.dart';
import 'package:test/screen/Data_tablescreen.dart';

import 'package:test/screen/display_student.dart';
import 'package:test/screen/student_screen.dart';

import 'arithmeticoutput.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter for class',
      initialRoute: '/',
      routes: {
        '/': (context) => const datatablescreen(),
        '/studentDetailsScreen': (context) => const StudentDetailsScreen(),
        '/displaystudentscreen': (context) => const displaystudentscreen(),

        // '/cardscreen':(context) => const cardscreen(),
        '/arithmetic': (context) => const Arithmetic(),

        '/listtilescreen': (context) => const Listtilescreen(),
      },
    ),
  );
}
