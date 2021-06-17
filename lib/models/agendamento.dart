import 'dart:html';

import 'package:flutter/material.dart';

class Agendamento {
  final DataElement dataAg;
  final TimeElement horaAg;
  final Text endAtend;
  final Text tipoServico;

  const Agendamento(
      {required this.dataAg,
      required this.horaAg,
      required this.endAtend,
      required this.tipoServico});
}
