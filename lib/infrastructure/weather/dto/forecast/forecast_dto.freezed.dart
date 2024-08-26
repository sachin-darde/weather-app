// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastDto _$ForecastDtoFromJson(Map<String, dynamic> json) {
  return _ForecastDto.fromJson(json);
}

/// @nodoc
mixin _$ForecastDto {
  int get dt => throw _privateConstructorUsedError;
  MainDto get main => throw _privateConstructorUsedError;
  List<WeatherDto> get weather => throw _privateConstructorUsedError;
  CloudsDto get clouds => throw _privateConstructorUsedError;
  WindDto get wind => throw _privateConstructorUsedError;
  int get visibility => throw _privateConstructorUsedError;
  double get pop => throw _privateConstructorUsedError;
  RainDto? get rain => throw _privateConstructorUsedError;
  String get dtTxt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDtoCopyWith<ForecastDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDtoCopyWith<$Res> {
  factory $ForecastDtoCopyWith(
          ForecastDto value, $Res Function(ForecastDto) then) =
      _$ForecastDtoCopyWithImpl<$Res, ForecastDto>;
  @useResult
  $Res call(
      {int dt,
      MainDto main,
      List<WeatherDto> weather,
      CloudsDto clouds,
      WindDto wind,
      int visibility,
      double pop,
      RainDto? rain,
      String dtTxt});

  $MainDtoCopyWith<$Res> get main;
  $CloudsDtoCopyWith<$Res> get clouds;
  $WindDtoCopyWith<$Res> get wind;
  $RainDtoCopyWith<$Res>? get rain;
}

/// @nodoc
class _$ForecastDtoCopyWithImpl<$Res, $Val extends ForecastDto>
    implements $ForecastDtoCopyWith<$Res> {
  _$ForecastDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = null,
    Object? visibility = null,
    Object? pop = null,
    Object? rain = freezed,
    Object? dtTxt = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDto,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDto>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsDto,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDto,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as RainDto?,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainDtoCopyWith<$Res> get main {
    return $MainDtoCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudsDtoCopyWith<$Res> get clouds {
    return $CloudsDtoCopyWith<$Res>(_value.clouds, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindDtoCopyWith<$Res> get wind {
    return $WindDtoCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RainDtoCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainDtoCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDtoImplCopyWith<$Res>
    implements $ForecastDtoCopyWith<$Res> {
  factory _$$ForecastDtoImplCopyWith(
          _$ForecastDtoImpl value, $Res Function(_$ForecastDtoImpl) then) =
      __$$ForecastDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
      MainDto main,
      List<WeatherDto> weather,
      CloudsDto clouds,
      WindDto wind,
      int visibility,
      double pop,
      RainDto? rain,
      String dtTxt});

  @override
  $MainDtoCopyWith<$Res> get main;
  @override
  $CloudsDtoCopyWith<$Res> get clouds;
  @override
  $WindDtoCopyWith<$Res> get wind;
  @override
  $RainDtoCopyWith<$Res>? get rain;
}

/// @nodoc
class __$$ForecastDtoImplCopyWithImpl<$Res>
    extends _$ForecastDtoCopyWithImpl<$Res, _$ForecastDtoImpl>
    implements _$$ForecastDtoImplCopyWith<$Res> {
  __$$ForecastDtoImplCopyWithImpl(
      _$ForecastDtoImpl _value, $Res Function(_$ForecastDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = null,
    Object? visibility = null,
    Object? pop = null,
    Object? rain = freezed,
    Object? dtTxt = null,
  }) {
    return _then(_$ForecastDtoImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDto,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDto>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as CloudsDto,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WindDto,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as RainDto?,
      dtTxt: null == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ForecastDtoImpl implements _ForecastDto {
  _$ForecastDtoImpl(
      {required this.dt,
      required this.main,
      required final List<WeatherDto> weather,
      required this.clouds,
      required this.wind,
      required this.visibility,
      required this.pop,
      required this.rain,
      required this.dtTxt})
      : _weather = weather;

  factory _$ForecastDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDtoImplFromJson(json);

  @override
  final int dt;
  @override
  final MainDto main;
  final List<WeatherDto> _weather;
  @override
  List<WeatherDto> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final CloudsDto clouds;
  @override
  final WindDto wind;
  @override
  final int visibility;
  @override
  final double pop;
  @override
  final RainDto? rain;
  @override
  final String dtTxt;

  @override
  String toString() {
    return 'ForecastDto(dt: $dt, main: $main, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, rain: $rain, dtTxt: $dtTxt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDtoImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      main,
      const DeepCollectionEquality().hash(_weather),
      clouds,
      wind,
      visibility,
      pop,
      rain,
      dtTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDtoImplCopyWith<_$ForecastDtoImpl> get copyWith =>
      __$$ForecastDtoImplCopyWithImpl<_$ForecastDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDtoImplToJson(
      this,
    );
  }
}

abstract class _ForecastDto implements ForecastDto {
  factory _ForecastDto(
      {required final int dt,
      required final MainDto main,
      required final List<WeatherDto> weather,
      required final CloudsDto clouds,
      required final WindDto wind,
      required final int visibility,
      required final double pop,
      required final RainDto? rain,
      required final String dtTxt}) = _$ForecastDtoImpl;

  factory _ForecastDto.fromJson(Map<String, dynamic> json) =
      _$ForecastDtoImpl.fromJson;

  @override
  int get dt;
  @override
  MainDto get main;
  @override
  List<WeatherDto> get weather;
  @override
  CloudsDto get clouds;
  @override
  WindDto get wind;
  @override
  int get visibility;
  @override
  double get pop;
  @override
  RainDto? get rain;
  @override
  String get dtTxt;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDtoImplCopyWith<_$ForecastDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
