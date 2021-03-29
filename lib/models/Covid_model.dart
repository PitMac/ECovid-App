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
    this.global,
  });

  Global global;
  List<Country> countries;
  DateTime date;

  factory Globals.fromJson(Map<String, dynamic> json) =>
      Globals(global: Global.fromJson(json["Global"]));

  Map<String, dynamic> toJson() => {
        "Global": global.toJson(),
      };
}

class Country {
  String country;
  String countryCode;
  String slug;
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;
  String date;

  Country({
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
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
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
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
