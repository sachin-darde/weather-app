part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onLoad() = _OnLoad;
  const factory HomeEvent.switchForecast({required ForecastDto forecast}) =
      _SwitchForecast;
  const factory HomeEvent.updateCurrentDate(
      {required String newDate, required int newIndex}) = _UpdateCurrentDate;
  const factory HomeEvent.emitFromAnywhere({required HomeState state}) =
      _EmitFromAnywhere;
}
