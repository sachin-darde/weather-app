import 'package:dio/dio.dart';
import 'package:weather_app/domain/core/api/api_constants.dart';

class ApiClient {
  final Dio _dio;

  ApiClient({required Dio dio, required String appid}) : _dio = dio {
    _dio.options.baseUrl = ApiConstants.baseUrl;
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters['appid'] = appid;
        return handler.next(options);
      },
    ));
  }

  Future<Response> getWeatherForecast(double lat, double lon) async {
    try {
      final response = await _dio.get(
        ApiConstants.forecast,
        queryParameters: {'lat': lat, 'lon': lon, 'units': 'metric'},
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
