import 'dart:async';

import 'package:flutter_boilerplate/domain/repo/country_repo.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/country_list_response.dart';
abstract class ICountryRepo {

FutureOr<List<CountryResponse>?> getCountry();
}