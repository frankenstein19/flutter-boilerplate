// To parse this JSON data, do
//
//     final countryListResponse = countryListResponseFromJson(jsonString);

import 'dart:convert';

List<CountryResponse> countryListResponseFromJson(String str) => List<CountryResponse>.from(json.decode(str).map((x) => CountryResponse.fromJson(x)));

String countryListResponseToJson(List<CountryResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountryResponse {
  CountryResponse({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  final Name? name;
  final List<String>? tld;
  final String? cca2;
  final String? ccn3;
  final String? cca3;
  final String? cioc;
  final bool? independent;
  final String? status;
  final bool? unMember;
  final Currencies? currencies;
  final Idd? idd;
  final List<String>? capital;
  final List<String>? altSpellings;
  final String? region;
  final String? subregion;
  final Languages? languages;
  final Map<String, Translation>? translations;
  final List<int>? latlng;
  final bool? landlocked;
  final List<String>? borders;
  final dynamic area;
  final Demonyms? demonyms;
  final String? flag;
  final Maps? maps;
  final int? population;
  final String? fifa;
  final Car? car;
  final List<String>? timezones;
  final List<String>? continents;
  final CoatOfArms? flags;
  final CoatOfArms? coatOfArms;
  final String? startOfWeek;
  final CapitalInfo? capitalInfo;
  final PostalCode? postalCode;

  factory CountryResponse.fromJson(Map<String, dynamic> json) => CountryResponse(
    name: json["name"] == null ? null : Name.fromJson(json["name"]),
    tld: json["tld"] == null ? null : List<String>.from(json["tld"].map((x) => x)),
    cca2: json["cca2"],
    ccn3: json["ccn3"],
    cca3: json["cca3"],
    cioc: json["cioc"],
    independent: json["independent"],
    status: json["status"],
    unMember: json["unMember"],
    currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
    idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
    capital: json["capital"] == null ? null : List<String>.from(json["capital"].map((x) => x)),
    altSpellings: json["altSpellings"] == null ? null : List<String>.from(json["altSpellings"].map((x) => x)),
    region: json["region"],
    subregion: json["subregion"],
    languages: json["languages"] == null ? null : Languages.fromJson(json["languages"]),
    translations: json["translations"] == null ? null : Map.from(json["translations"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
    landlocked: json["landlocked"],
    borders: json["borders"] == null ? null : List<String>.from(json["borders"].map((x) => x)),
    area: json["area"],
    demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
    flag: json["flag"],
    maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
    population: json["population"],
    fifa: json["fifa"],
    car: json["car"] == null ? null : Car.fromJson(json["car"]),
    timezones: json["timezones"] == null ? null : List<String>.from(json["timezones"].map((x) => x)),
    continents: json["continents"] == null ? null : List<String>.from(json["continents"].map((x) => x)),
    flags: json["flags"] == null ? null : CoatOfArms.fromJson(json["flags"]),
    coatOfArms: json["coatOfArms"] == null ? null : CoatOfArms.fromJson(json["coatOfArms"]),
    startOfWeek: json["startOfWeek"],
    capitalInfo: json["capitalInfo"] == null ? null : CapitalInfo.fromJson(json["capitalInfo"]),
    postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
  );

  Map<String, dynamic> toJson() => {
    "name":  name?.toJson(),
    "tld": tld == null ? null : List<dynamic>.from(tld!.map((x) => x)),
    "cca2": cca2,
    "ccn3": ccn3,
    "cca3": cca3,
    "cioc": cioc,
    "independent": independent,
    "status": status,
    "unMember": unMember,
    "currencies":  currencies?.toJson(),
    "idd": idd?.toJson(),
    "capital": capital == null ? null : List<dynamic>.from(capital!.map((x) => x)),
    "altSpellings": altSpellings == null ? null : List<dynamic>.from(altSpellings!.map((x) => x)),
    "region": region,
    "subregion": subregion,
  };
}

class CapitalInfo {
  CapitalInfo({
    this.latlng,
  });

  final List<double>? latlng;

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
    latlng: json["latlng"] == null ? null : List<double>.from(json["latlng"].map((x) => x.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "latlng": latlng == null ? null : List<dynamic>.from(latlng!.map((x) => x)),
  };
}

class Car {
  Car({
    this.signs,
    this.side,
  });

  final List<String>? signs;
  final String? side;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    signs: json["signs"] == null ? null : List<String>.from(json["signs"].map((x) => x)),
    side: json["side"],
  );

  Map<String, dynamic> toJson() => {
    "signs": signs == null ? null : List<dynamic>.from(signs!.map((x) => x)),
    "side": side,
  };
}

class CoatOfArms {
  CoatOfArms({
    this.png,
    this.svg,
  });

  final String? png;
  final String? svg;

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
    png: json["png"],
    svg: json["svg"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
  };
}

class Currencies {
  Currencies({
    this.bgn,
  });

  final Bgn? bgn;

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
    bgn: json["BGN"] == null ? null : Bgn.fromJson(json["BGN"]),
  );

  Map<String, dynamic> toJson() => {
    "BGN": bgn?.toJson(),
  };
}

class Bgn {
  Bgn({
    this.name,
    this.symbol,
  });

  final String? name;
  final String? symbol;

  factory Bgn.fromJson(Map<String, dynamic> json) => Bgn(
    name: json["name"],
    symbol: json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "symbol": symbol,
  };
}

class Demonyms {
  Demonyms({
    this.eng,
    this.fra,
  });

  final Eng? eng;
  final Eng? fra;

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
    eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
    fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
  );

  Map<String, dynamic> toJson() => {
    "eng":  eng?.toJson(),
    "fra":  fra?.toJson(),
  };
}

class Eng {
  Eng({
    this.f,
    this.m,
  });

  final String? f;
  final String? m;

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
    f: json["f"],
    m: json["m"],
  );

  Map<String, dynamic> toJson() => {
    "f": f,
    "m": m,
  };
}



class Idd {
  Idd({
    this.root,
    this.suffixes,
  });

  final String? root;
  final List<String>? suffixes;

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
    root: json["root"],
    suffixes: json["suffixes"] == null ? null : List<String>.from(json["suffixes"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "root": root,
    "suffixes": suffixes == null ? null : List<dynamic>.from(suffixes!.map((x) => x)),
  };
}

class Languages {
  Languages({
    this.bul,
  });

  final String? bul;

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
    bul: json["bul"],
  );

  Map<String, dynamic> toJson() => {
    "bul": bul,
  };
}

class Maps {
  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  final String? googleMaps;
  final String? openStreetMaps;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    googleMaps: json["googleMaps"],
    openStreetMaps: json["openStreetMaps"],
  );

  Map<String, dynamic> toJson() => {
    "googleMaps": googleMaps,
    "openStreetMaps": openStreetMaps,
  };
}

class Name {
  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  final String? common;
  final String? official;
  final NativeName? nativeName;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"],
    official: json["official"],
    nativeName: json["nativeName"] == null ? null : NativeName.fromJson(json["nativeName"]),
  );

  Map<String, dynamic> toJson() => {
    "common": common,
    "official": official,
    "nativeName": nativeName == null ? null : nativeName!.toJson(),
  };
}

class NativeName {
  NativeName({
    this.bul,
  });

  final Translation? bul;

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
    bul: json["bul"] == null ? null : Translation.fromJson(json["bul"]),
  );

  Map<String, dynamic> toJson() => {
    "bul": bul == null ? null : bul!.toJson(),
  };
}

class Translation {
  Translation({
    this.official,
    this.common,
  });

  final String? official;
  final String? common;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    official: json["official"],
    common: json["common"],
  );

  Map<String, dynamic> toJson() => {
    "official": official,
    "common": common,
  };
}

class PostalCode {
  PostalCode({
    this.format,
    this.regex,
  });

  final String? format;
  final String? regex;

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
    format: json["format"],
    regex: json["regex"],
  );

  Map<String, dynamic> toJson() => {
    "format": format,
    "regex": regex,
  };
}
