import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/infrastructure/weather/clouds/clouds_dto.dart';
import 'package:weather_app/infrastructure/weather/dto/main/main_dto.dart';
import 'package:weather_app/infrastructure/weather/dto/rain/rain_dto.dart';
import 'package:weather_app/infrastructure/weather/dto/weather/weather_dto.dart';
import 'package:weather_app/infrastructure/weather/dto/wind/wind_dto.dart';


part 'forecast_dto.freezed.dart';
part 'forecast_dto.g.dart';

@freezed
class ForecastDto with _$ForecastDto {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ForecastDto({
    required int dt,
    required MainDto main,
    required List<WeatherDto> weather,
    required CloudsDto clouds,
    required WindDto wind,
    required int visibility,
    required double pop,
    required RainDto? rain,
    required String dtTxt,
  }) = _ForecastDto;

  factory ForecastDto.fromJson(Map<String, dynamic> json) => _$ForecastDtoFromJson(json);
}
