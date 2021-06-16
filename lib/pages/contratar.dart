import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Contratar extends StatefulWidget {
  @override
  _ContratarState createState() => _ContratarState();
}

class _ContratarState extends State<Contratar> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contratar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('data')],
          ),
        ));
  }
}
