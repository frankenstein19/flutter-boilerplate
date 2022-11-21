// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/services/api_services.dart' as _i3;
import '../domain/repo/country_repo.dart' as _i6;
import '../domain/repo/i_country_repo.dart' as _i4;
import '../domain/repo/mock_country_repo.dart' as _i5;
import '../domain/usecase/country_screen_usecase.dart' as _i8;
import '../domain/usecase/login_screen_usecase.dart' as _i7;

const String _TESTING = 'TESTING';
const String _DEVELOPMENT = 'DEVELOPMENT';
const String _PRODUCTION = 'PRODUCTION';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.ApiServices>(_i3.ApiServices());
  gh.factory<_i4.ICountryRepo>(
    () => _i5.MockCountryRepo(),
    registerFor: {_TESTING},
  );
  gh.factory<_i4.ICountryRepo>(
    () => _i6.CountryRepo(),
    registerFor: {
      _DEVELOPMENT,
      _PRODUCTION,
    },
  );
  gh.factory<_i7.LoginScreenUseCase>(
    () => _i7.LoginScreenUseCase(),
    registerFor: {
      _DEVELOPMENT,
      _PRODUCTION,
      _TESTING,
    },
  );
  gh.factory<_i8.CountryScreenUseCase>(
    () => _i8.CountryScreenUseCase(get<_i4.ICountryRepo>()),
    registerFor: {
      _DEVELOPMENT,
      _PRODUCTION,
      _TESTING,
    },
  );
  return get;
}
