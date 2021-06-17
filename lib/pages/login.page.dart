import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_first_app_flutter/components/contratado_title.dart';
import 'package:my_first_app_flutter/provider/contratados.dart';
import 'package:my_first_app_flutter/routes/app_routes.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get children => null;

  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    width: 104,
                    height: 104,
                    child: Image.asset("assets/logo.png")),
                ListTile(
                    title: Text(
                  'Serviços',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 56, color: Colors.white),
                )),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Divider(),
                TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ),
                Divider(),
                ButtonTheme(
                    height: 60.0,
                    child: RaisedButton(
                      child: Text(
                        "Login",
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 20),
                      ),
                      color: Colors.white,
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Contratar()))
                      },
                    ))
              ],
            ),
          )),
    );
  }
}

class Contratar extends StatefulWidget {
  @override
  _ContratarState createState() => _ContratarState();
}

class _ContratarState extends State<Contratar> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    final Contratados contratados = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Contratar"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_alt_rounded),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.AGENDAMENTO);
            },
          ),
          IconButton(
            icon: Icon(Icons.search_rounded),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contratados.count,
        itemBuilder: (ctx, i) => ContratadoTitle(contratados.all.elementAt(i)),
      ),
    );
  }
}

class Agendamento extends StatefulWidget {
  const Agendamento({Key? key}) : super(key: key);

  @override
  _AgendamentoState createState() => _AgendamentoState();
}

class _AgendamentoState extends State<Agendamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agendamento"),
      ),
      //body: ListView.separated(),
    );
  }
}
