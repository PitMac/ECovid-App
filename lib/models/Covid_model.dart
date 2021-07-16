import 'dart:convert';

class Countrys {
  List<Country> items = [];

  Countrys();

  Countrys.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;
    for (var item in jsonList) {
      final country = new Country.fromJsonMap(item);
      items.add(country);
    }
  }
}

Globals coronaFromJson(String str) => Globals.fromJson(json.decode(str));

class Globals {
  Globals({
    required this.global,
  });

  Global global;
  late List<Country> countries;
  late DateTime date;

  factory Globals.fromJson(Map<String, dynamic> json) =>
      Globals(global: Global.fromJson(json["Global"]));

  Map<String, dynamic> toJson() => {
        "Global": global.toJson(),
      };
}

class Country {
  late String country;
  late String countryCode;
  late String slug;
  late int newConfirmed;
  late int totalConfirmed;
  late int newDeaths;
  late int totalDeaths;
  late int newRecovered;
  late int totalRecovered;
  late String date;

  Country({
    required this.country,
    required this.countryCode,
    required this.slug,
    required this.newConfirmed,
    required this.totalConfirmed,
    required this.newDeaths,
    required this.totalDeaths,
    required this.newRecovered,
    required this.totalRecovered,
    required this.date,
  });
  Country.fromJsonMap(Map<String, dynamic> json) {
    country = json['Country'];
    countryCode = json["CountryCode"];
    slug = json["Slug"];
    newConfirmed = json["NewConfirmed"];
    totalConfirmed = json["TotalConfirmed"];
    newDeaths = json["NewDeaths"];
    totalDeaths = json["TotalDeaths"];
    newRecovered = json["NewRecovered"];
    totalRecovered = json["TotalRecovered"];
  }
}

class Global {
  Global({
    required this.newConfirmed,
    required this.totalConfirmed,
    required this.newDeaths,
    required this.totalDeaths,
    required this.newRecovered,
    required this.totalRecovered,
  });

  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;

  factory Global.fromJson(Map<String, dynamic> json) => Global(
        newConfirmed: json["NewConfirmed"],
        totalConfirmed: json["TotalConfirmed"],
        newDeaths: json["NewDeaths"],
        totalDeaths: json["TotalDeaths"],
        newRecovered: json["NewRecovered"],
        totalRecovered: json["TotalRecovered"],
      );

  Map<String, dynamic> toJson() => {
        "NewConfirmed": newConfirmed,
        "TotalConfirmed": totalConfirmed,
        "NewDeaths": newDeaths,
        "TotalDeaths": totalDeaths,
        "NewRecovered": newRecovered,
        "TotalRecovered": totalRecovered,
      };
}
