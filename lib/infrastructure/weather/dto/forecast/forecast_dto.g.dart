// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDtoImpl _$$ForecastDtoImplFromJson(Map<String, dynamic> json) =>
    _$ForecastDtoImpl(
      dt: json['dt'] as int,
      main: MainDto.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: CloudsDto.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: WindDto.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: json['visibility'] as int,
      pop: (json['pop'] as num).toDouble(),
      rain: json['rain'] == null
          ? null
          : RainDto.fromJson(json['rain'] as Map<String, dynamic>),
      dtTxt: json['dt_txt'] as String,
    );

Map<String, dynamic> _$$ForecastDtoImplToJson(_$ForecastDtoImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'rain': instance.rain,
      'dt_txt': instance.dtTxt,
    };
