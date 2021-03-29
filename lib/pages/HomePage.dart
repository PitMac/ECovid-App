import 'package:corona/models/Covid_provider.dart';
import 'package:corona/widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final globalProvider = new GlobalProvider();

  @override
  Widget build(BuildContext context) {
    globalProvider.getGlobal();

    return Scaffold(
        appBar: AppBar(
          title: Text('ECovid-19'),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            _crearDatos(context),
            _crearBoton(context),
          ],
        )));
  }

  Widget _crearDatos(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: _screenSize.height * 0.8,
      child: FutureBuilder(
          future: globalProvider.getGlobal(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Inicio(
                globals: snapshot.data,
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

class Inicio extends StatelessWidget {
  final globals;

  Inicio({@required this.globals});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: <Widget>[
          crearCard(
            'Nuevos confirmados:',
            '${globals.newConfirmed}',
          ),
          crearCard(
            'Total de Confirmados:',
            '${globals.totalConfirmed}',
          ),
          crearCard(
            'Nuevos Recuperados:',
            '${globals.newRecovered}',
          ),
          crearCard('Total de Recuperados:', '${globals.totalRecovered}'),
          crearCard(
            'Nuevas Muertes:',
            '${globals.newDeaths}',
          ),
          crearCard(
            'Muertes Totales:',
            '${globals.totalDeaths}',
          )
        ],
      ),
    );
  }
}

Widget _crearBoton(BuildContext context) {
  return Container(
    child: OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(15),
      ),
      onPressed: () {
        Navigator.pushNamed(context, './paises');
      },
      icon: Icon(Icons.account_balance, color: Colors.white),
      label:
          Text('Ver listado de Países', style: TextStyle(color: Colors.white)),
    ),
  );
}
