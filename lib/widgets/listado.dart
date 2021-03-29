import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listado extends StatelessWidget {
  final List<dynamic> ciudades;

  Listado({@required this.ciudades});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(child:
          ListView.builder(itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, './data', arguments: ciudades[index]);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Text(
                    '${ciudades[index].country}',
                    style: TextStyle(fontSize: _screenSize.height * 0.02),
                  ),
                ],
              ),
            ),
          ),
        );
      })),
    );
  }
}
