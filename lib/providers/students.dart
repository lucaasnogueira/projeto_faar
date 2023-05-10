import 'dart:math';

import 'package:cadunico_do_esporte/data/dummy_student.dart';
import 'package:cadunico_do_esporte/models/student.dart';
import 'package:flutter/material.dart';

class Students with ChangeNotifier {
  final Map<String, Student> _items = {...DUMMY_STUDENT};

  // Retorna uma cópia da lista de todos os objetos Student armazenados em _items.
  List<Student> get all {
    return [..._items.values];
  }

  // Retorna quantos elementos tem na lista de estudantes.
  int get count {
    return _items.length;
  }

  Student byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Student student) {
    // Verifica se existe um estudante (containsKey) e ele tira o espaço em branco (trim) verificando se é vazio ( isnotempty)
    if (student.id.trim().isNotEmpty && _items.containsKey(student.id)) {
      // Alterar
      _items.update(
        student.id,
        (_) => Student(
            id: student.id,
            modal: student.modal,
            name: student.name,
            dateBirth: student.dateBirth,
            localBirt: student.localBirt,
            rg: student.rg,
            cpf: student.cpf,
            issuingAgen: student.issuingAgen,
            gender: student.gender,
            email: student.email,
            phone: student.phone),
      );
    } else {
      // Gerando o id de forma randomica
      final id = Random().nextDouble().toString();
      // Inserir caso não esteja dentro?
      _items.putIfAbsent(
        // Adicionar
        id,
        () => Student(
          id: id,
          modal: student.modal,
          name: student.name,
          dateBirth: student.dateBirth,
          localBirt: student.localBirt,
          rg: student.rg,
          cpf: student.cpf,
          issuingAgen: student.issuingAgen,
          gender: student.gender,
          email: student.email,
          phone: student.phone,
        ),
      );
    }
    // Envia as alterações para os Listerners
    notifyListeners();
  }

  void remove(Student student) {
    _items.remove(student.id);
    notifyListeners();
  }
}
