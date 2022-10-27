
import 'package:flutter_boilerplate/di/di_config.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/country_list_response.dart';
import '../repo/i_country_repo.dart';

@devEnv
@prodEnv
@testEnv
@injectable
class CountryScreenUseCase {

  final ICountryRepo countryRepo;

  CountryScreenUseCase(this.countryRepo);

  Future<List<CountryResponse>?> getCountry() async {
    return await countryRepo.getCountry();
  }

}