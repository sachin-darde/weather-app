import 'package:weather_app/domain/core/api/api_client.dart';
import 'package:weather_app/domain/weather/weather_repository.dart';
import 'package:weather_app/infrastructure/weather/dto/weather_response/weather_response_dto.dart';

class IWeatherRepository extends WeatherRepository {
  final ApiClient _apiClient;

  IWeatherRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  @override
  Future<WeatherResponseDto> fetchWeatherForecast(
      double lat, double lon) async {
    final response = await _apiClient.getWeatherForecast(lat, lon);
    final weatherResponse = WeatherResponseDto.fromJson(response.data);
    return weatherResponse;
  }
}
