import 'package:flutter/material.dart';
import 'package:test/listtilescreen.dart';
import 'package:test/screen/auth/login_screen.dart';
import 'package:test/screen/auth/register_screen.dart';

import 'package:test/screen/display_student.dart';
import 'package:test/screen/student_screen.dart';

import 'arithmeticoutput.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter for class',
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      routes: {
        '/': (context) => const loginscreen(),
        '/studentDetailsScreen': (context) => const StudentDetailsScreen(),
        '/displaystudentscreen': (context) => const displaystudentscreen(),
        '/registerscreen': (context) => const registerscreen(),

        // '/cardscreen':(context) => const cardscreen(),
        '/arithmetic': (context) => const Arithmetic(),

        '/listtilescreen': (context) => const Listtilescreen(),
      },
    ),
  );
}
