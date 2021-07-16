import 'package:corona/pages/DatasPage.dart';
import 'package:corona/pages/HomePage.dart';
import 'package:corona/pages/PaisesPage.dart';
import 'package:corona/pages/WelcomePage.dart';
import 'package:flutter/cupertino.dart';

final routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => WelcomePage(),
  '/home': (BuildContext context) => HomePage(),
  '/data': (BuildContext context) => DatasPage(),
  '/paises': (BuildContext context) => PaisesPage(),
};
