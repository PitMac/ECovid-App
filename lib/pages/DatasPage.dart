import 'package:corona/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:corona/models/Covid_model.dart';

class DatasPage extends StatefulWidget {
  @override
  _DatasPageState createState() => _DatasPageState();
}

class _DatasPageState extends State<DatasPage> {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    final Country paises = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            paises.country,
            style: TextStyle(fontSize: _screenSize.height * 0.03),
          ),
        ),
        body: Center(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: <Widget>[
              crearCard('Nuevos Confirmados', '${paises.newConfirmed}'),
              crearCard('Total de Confirmados', '${paises.totalConfirmed}'),
              crearCard('Nuevos Recuperados', '${paises.newRecovered}'),
              crearCard('Total de Recuperados', '${paises.totalRecovered}'),
              crearCard('Nuevos Muertos', '${paises.newDeaths}'),
              crearCard('Total de Muertes', '${paises.totalDeaths}')
            ],
          ),
        )
//
        );
  }
}
