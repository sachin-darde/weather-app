import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/infrastructure/weather/dto/city/city_dto.dart';
import 'package:weather_app/infrastructure/weather/dto/forecast/forecast_dto.dart';


part 'weather_response_dto.freezed.dart';
part 'weather_response_dto.g.dart';

@freezed
class WeatherResponseDto with _$WeatherResponseDto {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory WeatherResponseDto({
    required String cod,
    required int message,
    required int cnt,
    required List<ForecastDto> list,
    required CityDto city,
  }) = _WeatherResponseDto;

  factory WeatherResponseDto.fromJson(Map<String, dynamic> json) => _$WeatherResponseDtoFromJson(json);
}
