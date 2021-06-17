import 'package:my_first_app_flutter/pages/login.page.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/provider/contratados.dart';
import 'package:my_first_app_flutter/routes/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Contratados(),
        )
      ],
      child: MaterialApp(
        title: 'Desafio.WTF',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: LoginPage(),
        routes: {
          AppRoutes.HOME: (_) => LoginPage(),
          AppRoutes.AGENDAMENTO: (_) => Agendamento()
        },
      ),
    );
  }
}
