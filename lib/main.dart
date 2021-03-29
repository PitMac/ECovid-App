import 'package:corona/pages/WelcomePage.dart';
import 'package:corona/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[900],
        accentColor: Colors.lightBlue[800],
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline5: TextStyle(
              fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline6: TextStyle(
              fontSize: 20.0, fontStyle: FontStyle.italic, color: Colors.black),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      routes: routes,
    );
  }
}
