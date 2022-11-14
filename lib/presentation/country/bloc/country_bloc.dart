
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/domain/usecase/country_screen_usecase.dart';

import '../../../data/model/country_list_response.dart';

part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc(this.countryScreenUseCase) : super(CountryInitial()) {
    on<GetCountryListEvent>(onGetCountryListEvent);
  }

 final CountryScreenUseCase countryScreenUseCase;

  /// This method will call on GetCountryListEvent
  /// This method fetch data from Rest api
  /// This method will emit two state loading and loaded
  void onGetCountryListEvent(GetCountryListEvent event,Emitter<CountryState> emit)async{
    emit(CountryLoadingState());
   final list = await countryScreenUseCase.getCountry();
    emit(CountryLoadedState(list??[]));

  }
}
