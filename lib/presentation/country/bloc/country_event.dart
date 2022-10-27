part of 'country_bloc.dart';

abstract class CountryEvent extends Equatable {
  const CountryEvent();
}
/// Get Country list event
/// This event will fetch country list from api
class GetCountryListEvent extends CountryEvent{
  @override
  List<Object?> get props => [];
}
