import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/icon/icon.png',
            height: _screenSize.height * 0.24,
            width: _screenSize.width * 0.32,
          ),
          Center(
            child: Text(
              'ECovid-19',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: _screenSize.width * 0.07,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: _screenSize.height * 0.1,
          ),
          Center(
              child: Card(
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Bienvenido!",
                    style: TextStyle(fontSize: _screenSize.width * 0.05),
                  ),
                  contentPadding:
                      EdgeInsets.only(top: 20, left: 17, bottom: 20, right: 17),
                  subtitle: Text(
                    'Esta aplicación sirve para poder encontrar estadísticas reales sobre la situación de la pandemia respecto a los casos de coronavirus.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: _screenSize.width * 0.04,
                    ),
                  ),
                ),
              ],
            ),
          )),
          SizedBox(
            height: _screenSize.height * 0.1,
          ),
          Center(
            child: Text(
              '¿Desea ver los datos?',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: _screenSize.width * 0.04,
              ),
            ),
          ),
          SizedBox(
            height: _screenSize.height * 0.03,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              padding: EdgeInsets.symmetric(
                  horizontal: _screenSize.width * 0.1,
                  vertical: _screenSize.height * 0.04),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, './');
            },
            child: Text('Presiona aqui', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(
            height: _screenSize.height * 0.1,
          ),
          Text(
            'Created by: PitMac',
            style: TextStyle(color: Colors.white60),
          )
        ],
      ),
    ));
  }
}
