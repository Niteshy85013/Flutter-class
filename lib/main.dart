import 'package:flutter/material.dart';
import 'package:test/listtilescreen.dart';
import 'package:test/screen/auth/login_screen.dart';
import 'package:test/screen/auth/register_screen.dart';
import 'package:test/screen/display_student.dart';
import 'package:test/screen/splash_screen.dart';
import 'package:test/screen/student_screen.dart';

import 'package:test/theme/theme_data.dart';

import 'arithmeticoutput.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter for class',
      initialRoute: '/',
      theme: getApplicationTheme(),
      
       
      routes: {
        '/': (context) => const splashscreen(),
        '/studentDetailsScreen': (context) => const StudentDetailsScreen(),
        '/displaystudentscreen': (context) => const displaystudentscreen(),
        '/registerscreen': (context) => const registerscreen(),
        '/loginscreen': (context) => const loginscreen(),

        // '/cardscreen':(context) => const cardscreen(),
        '/arithmetic': (context) => const Arithmetic(),

        '/listtilescreen': (context) => const Listtilescreen(),
      },
    ),
  );
}
