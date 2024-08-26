import 'package:weather_app/infrastructure/weather/dto/weather_response/weather_response_dto.dart';

abstract class WeatherRepository {
  Future<WeatherResponseDto> fetchWeatherForecast(double lat, double lon);
}
