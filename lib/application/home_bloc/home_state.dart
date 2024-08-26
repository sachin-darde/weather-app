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
    required bool locationAccessGranted,
  }) = _HomeState;
  factory HomeState.initial({required AppConfig appConfig}) => HomeState(
        isLoading: true,
        dates: [],
        groupedForecasts: {},
        currentDateIndex: -1,
        locationAccessGranted: false,
        scrollController: ScrollController(),
        weatherRepository: IWeatherRepository(apiClient: appConfig.apiClient),
      );
}
