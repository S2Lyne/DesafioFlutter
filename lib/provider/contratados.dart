import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:my_first_app_flutter/data/contratado_user.dart';
import 'package:my_first_app_flutter/models/contratado.dart';

class Contratados with ChangeNotifier {
  final Map<String, Contratado> _items = {...CONTRATADO_USERS};

  List<Contratado> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Contratado byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Contratado contratado) {
    if (contratado == null) {
      return;
    }

    if (contratado.id != null &&
        contratado.id.trim().isNotEmpty &&
        _items.containsKey(contratado.id)) {
      _items.update(contratado.id, (_) => contratado);
    }

    //adicionar
    final id = Random().nextDouble().toString();
    _items.putIfAbsent(
        id,
        () => Contratado(
              id: id,
              nome: contratado.nome,
              email: contratado.email,
              senha: contratado.senha,
              servico: contratado.servico,
              telefone: contratado.telefone,
              avatarUrl: contratado.avatarUrl,
            ));
    // ou alterar

    notifyListeners();
  }
}
