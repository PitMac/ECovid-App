import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:corona/models/Covid_model.dart';

class CountrysProvider {
  final url = 'https://api.covid19api.com/summary';

  Future<List<Country>> getCountrys() async {
    final resp = await http.get(Uri.parse(url));
    final decodedData = json.decode(resp.body);
    late final countrys = new Countrys.fromJsonList(decodedData['Countries']);

    return countrys.items;
  }
}

class GlobalProvider {
  final url = 'https://api.covid19api.com/summary';
  Future getGlobal() async {
    final res = await http.get(Uri.parse(url));
    final resf = coronaFromJson(res.body);
    final global = resf.global;
    return global;
  }
}
