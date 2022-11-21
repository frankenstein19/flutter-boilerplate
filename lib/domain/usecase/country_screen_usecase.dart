
import 'package:flutter/services.dart';
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


  // String batteryLevel = 'Unknown battery level.';

  Future<void> getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await const MethodChannel(
          'samples.flutter.dev/battery').invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
      print("Result $batteryLevel");
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
  }
}