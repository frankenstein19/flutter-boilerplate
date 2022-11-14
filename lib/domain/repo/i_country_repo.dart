import 'dart:async';


import '../../data/model/country_list_response.dart';
abstract class ICountryRepo {

FutureOr<List<CountryResponse>?> getCountry();
}