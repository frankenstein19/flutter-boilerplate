import 'dart:async';


import 'package:injectable/injectable.dart';

import '../../data/model/country_list_response.dart';
import '../../data/services/api_services.dart';
import '../../di/di_config.dart';
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