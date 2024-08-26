// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseDtoImpl _$$WeatherResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherResponseDtoImpl(
      cod: json['cod'] as String,
      message: json['message'] as int,
      cnt: json['cnt'] as int,
      list: (json['list'] as List<dynamic>)
          .map((e) => ForecastDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: CityDto.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherResponseDtoImplToJson(
        _$WeatherResponseDtoImpl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };
