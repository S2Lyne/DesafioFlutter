import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_app_flutter/pages/contratar.dart';
import 'package:my_first_app_flutter/pages/login.page.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
              theme: ThemeData(
                primarySwatch: Colors.deepOrange,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light,
              ),
              initialRoute: '/',
              routes: {
                '/': (context) => LoginPage(),
                '/contratar': (context) => Contratar(),
              });
        });
  }
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
