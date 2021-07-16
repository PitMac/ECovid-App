import 'package:flutter/material.dart';

Widget crearCard(String title, String number) {
  return Card(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.white70, width: 2),
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 9.0,
    margin: EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
        ),
        Text(
          number,
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    ),
  );
}
