// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_boilerplate/di/di_config.dart';
import 'package:flutter_boilerplate/domain/usecase/country_screen_usecase.dart';
import 'package:flutter_boilerplate/presentation/country/bloc/country_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  setUpAll((){
    configureDependencies(Env.testing);
  });
 
  blocTest<CountryBloc, CountryState>(
    'TODO: description',
    build: () => CountryBloc(getIt<CountryScreenUseCase>()),
    act: (bloc) {
      bloc.add(GetCountryListEvent());
    },
    wait: const Duration(seconds: 2),
    expect: () => [
      isA<CountryLoadingState>(),
      isA<CountryLoadedState>(),
    ],
  );

}
