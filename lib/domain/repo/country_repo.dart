import 'dart:async';

import 'package:flutter_boilerplate/data/model/country_list_response.dart';
import 'package:flutter_boilerplate/data/services/api_services.dart';
import 'package:flutter_boilerplate/di/di_config.dart';
import 'package:injectable/injectable.dart';

import 'i_country_repo.dart';
@devEnv
@prodEnv
@Injectable(as:ICountryRepo)
class CountryRepo extends ICountryRepo{

  @override
  Future<List<CountryResponse>?> getCountry() async {
    return await getIt<ApiServices>().getCountry();
  }
}