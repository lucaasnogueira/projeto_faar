import 'package:cadunico_do_esporte/models/student.dart';
import 'package:cadunico_do_esporte/providers/students.dart';
import 'package:cadunico_do_esporte/widgets/student_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    // Se colocar dentro do context, listen:false, ele não atualiza, mas envia os dados.
    final Students students = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Alunos'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                // students.put(
                //   const Student(
                //       id: '1',
                //       modal: 'Pebol',
                //       name: 'rsrsrs',
                //       dateBirth: 'teste',
                //       localBirt: 'teste',
                //       rg: 'teste',
                //       cpf: 'teste',
                //       issuingAgen: 'teste',
                //       gender: 'teste',
                //       email: 'teste',
                //       phone: 'teste'),
                // );
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: ListView.builder(
          // Acessa os elementos direto do provider
          itemCount: students.count,
          itemBuilder: (ctx, i) => StudentTile(
            students.byIndex(i),
          ),
        ));
  }
}
