import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/models/contratado.dart';
import 'package:my_first_app_flutter/routes/app_routes.dart';

class ContratadoTitle extends StatelessWidget {
  final Contratado contratado;

  const ContratadoTitle(this.contratado);

  @override
  Widget build(BuildContext context) {
    final avatar = contratado.avatarUrl == null || contratado.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(contratado.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(contratado.nome),
      subtitle: Text(contratado.servico),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.amber,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add_task),
              color: Colors.amber,
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.AGENDAMENTO,
                  arguments: contratado,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
