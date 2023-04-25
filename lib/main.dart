import 'package:flutter/material.dart';
import 'loginScreen.dart';

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
      home: LoginPage(),
    );
}
}

