part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required WeatherRepository weatherRepository,
    required Map<String, List<ForecastDto>> groupedForecasts,
    required List<String> dates,
    String? currentDate,
    required int currentDateIndex,
    ForecastDto? currentForecast,
    required ScrollController scrollController,
    CityDto? city,
  }) = _HomeState;
  factory HomeState.initial({required AppConfig appConfig}) => HomeState(
        isLoading: false,
        dates: [],
        groupedForecasts: {},
        currentDateIndex: -1,
        scrollController: ScrollController(),
        weatherRepository: IWeatherRepository(apiClient: appConfig.apiClient),
      );
}
