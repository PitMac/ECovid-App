import 'package:corona/widgets/search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:corona/models/Covid_provider.dart';
import 'package:corona/widgets/listado.dart';

class PaisesPage extends StatelessWidget {
  final countrysProvider = new CountrysProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Países'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FutureBuilder(
            future: countrysProvider.getCountrys(),
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                return Listado(
                  ciudades: snapshot.data,
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
