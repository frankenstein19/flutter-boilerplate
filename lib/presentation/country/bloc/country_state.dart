part of 'country_bloc.dart';

abstract class CountryState extends Equatable {
  const CountryState();
}

class CountryInitial extends CountryState {
  @override
  List<Object> get props => [];
}

/// Loading State
/// In loading Progressbar will  be shown in UI
class CountryLoadingState extends CountryState {
  @override
  List<Object> get props => [];
}

/// Loaded state
/// Loaded state will contain country list which will be pass to Listview
class CountryLoadedState extends CountryState {
  final List<CountryResponse> list;

  const CountryLoadedState(this.list);

  @override
  List<Object> get props => [list];
}
