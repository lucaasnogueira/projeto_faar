import 'package:cadunico_do_esporte/providers/students.dart';
import 'package:cadunico_do_esporte/routes/app_routes.dart';
import 'package:cadunico_do_esporte/screens/gridScreen.dart';
import 'package:cadunico_do_esporte/screens/loginScreen.dart';
import 'package:cadunico_do_esporte/screens/student_form.dart';
import 'package:cadunico_do_esporte/screens/student_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Referente aos estudantes
        ChangeNotifierProvider(
          create: (ctx) => Students(),
        )
      ],
      child: MaterialApp(
        title: 'Cadúnico do esporte',
        debugShowCheckedModeBanner: false,
        // área das rotas
        routes: {
          AppRoutes.HOME: (_) => Grid(),
          AppRoutes.STUDENT_FORM: (_) => StudentForm()
        },
      ),
    );
  }
}
