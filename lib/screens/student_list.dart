import 'package:cadunico_do_esporte/data/dummy_student.dart';
import 'package:cadunico_do_esporte/widgets/student_tile.dart';
import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    const students = {...DUMMY_STUDENT};
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Alunos'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (ctx, i) => StudentTile(students.values.elementAt(i)),
      ),
    );
  }
}
