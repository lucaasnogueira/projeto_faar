import 'package:cadunico_do_esporte/screens/student_form.dart';
import 'package:cadunico_do_esporte/screens/student_list.dart';
import 'package:flutter/material.dart';
import 'screens/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadúnico do esporte',
      debugShowCheckedModeBanner: false,
      home: StudentForm(),
    );
  }
}
