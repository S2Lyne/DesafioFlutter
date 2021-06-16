import 'package:flutter/material.dart';

class Contratado {
  final String id;
  final String nome;
  final String email;
  final String senha;
  final String telefone;
  final String servico;
  final String avatarUrl;

  const Contratado(
      {required this.id,
      required this.nome,
      required this.email,
      required this.senha,
      required this.telefone,
      required this.servico,
      required this.avatarUrl});
}
