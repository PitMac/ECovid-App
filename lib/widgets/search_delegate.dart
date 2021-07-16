import 'package:corona/models/Covid_model.dart';
import 'package:corona/provider/Covid_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  final countrysProvider = new CountrysProvider();

  @override
  List<Widget> buildActions(BuildContext context) {
    // Las acciones de nuestro AppBar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono de la izquierda del AppBar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Container());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
        future: countrysProvider.getCountrys(),
        builder: (BuildContext context, AsyncSnapshot<List<Country>> snapshot) {
          if (snapshot.hasData) {
            final paises = query.isEmpty
                ? snapshot.data
                : snapshot.data!
                    .where((p) => p.country.toLowerCase().contains(query))
                    .toList();

            return ListView.builder(
                itemCount: paises!.length,
                itemBuilder: (context, i) {
                  final datoenviado = paises[i];
                  final datomostrar = paises[i].country;
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, './data',
                          arguments: datoenviado);
                    },
                    child: ListTile(
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.business),
                          SizedBox(
                            width: 20,
                          ),
                          Text('$datomostrar')
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
