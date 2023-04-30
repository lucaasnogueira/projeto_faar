import 'package:flutter/material.dart';

import '../models/student.dart';

class StudentTile extends StatelessWidget {
  final Student student;
  const StudentTile(this.student);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Modalidade: ${student.modal}'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nome: ${student.name}'),
          Text('Data de Nascimento: ${student.dateBirth}'),
          Text('RG: ${student.rg}'),
        ],
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
