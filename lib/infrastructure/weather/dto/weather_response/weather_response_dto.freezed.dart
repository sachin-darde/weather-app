// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponseDto _$WeatherResponseDtoFromJson(Map<String, dynamic> json) {
  return _WeatherResponseDto.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponseDto {
  String get cod => throw _privateConstructorUsedError;
  int get message => throw _privateConstructorUsedError;
  int get cnt => throw _privateConstructorUsedError;
  List<ForecastDto> get list => throw _privateConstructorUsedError;
  CityDto get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseDtoCopyWith<WeatherResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseDtoCopyWith<$Res> {
  factory $WeatherResponseDtoCopyWith(
          WeatherResponseDto value, $Res Function(WeatherResponseDto) then) =
      _$WeatherResponseDtoCopyWithImpl<$Res, WeatherResponseDto>;
  @useResult
  $Res call(
      {String cod, int message, int cnt, List<ForecastDto> list, CityDto city});

  $CityDtoCopyWith<$Res> get city;
}

/// @nodoc
class _$WeatherResponseDtoCopyWithImpl<$Res, $Val extends WeatherResponseDto>
    implements $WeatherResponseDtoCopyWith<$Res> {
  _$WeatherResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastDto>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityDtoCopyWith<$Res> get city {
    return $CityDtoCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseDtoImplCopyWith<$Res>
    implements $WeatherResponseDtoCopyWith<$Res> {
  factory _$$WeatherResponseDtoImplCopyWith(_$WeatherResponseDtoImpl value,
          $Res Function(_$WeatherResponseDtoImpl) then) =
      __$$WeatherResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cod, int message, int cnt, List<ForecastDto> list, CityDto city});

  @override
  $CityDtoCopyWith<$Res> get city;
}

/// @nodoc
class __$$WeatherResponseDtoImplCopyWithImpl<$Res>
    extends _$WeatherResponseDtoCopyWithImpl<$Res, _$WeatherResponseDtoImpl>
    implements _$$WeatherResponseDtoImplCopyWith<$Res> {
  __$$WeatherResponseDtoImplCopyWithImpl(_$WeatherResponseDtoImpl _value,
      $Res Function(_$WeatherResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_$WeatherResponseDtoImpl(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastDto>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$WeatherResponseDtoImpl implements _WeatherResponseDto {
  _$WeatherResponseDtoImpl(
      {required this.cod,
      required this.message,
      required this.cnt,
      required final List<ForecastDto> list,
      required this.city})
      : _list = list;

  factory _$WeatherResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseDtoImplFromJson(json);

  @override
  final String cod;
  @override
  final int message;
  @override
  final int cnt;
  final List<ForecastDto> _list;
  @override
  List<ForecastDto> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final CityDto city;

  @override
  String toString() {
    return 'WeatherResponseDto(cod: $cod, message: $message, cnt: $cnt, list: $list, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseDtoImpl &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt,
      const DeepCollectionEquality().hash(_list), city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseDtoImplCopyWith<_$WeatherResponseDtoImpl> get copyWith =>
      __$$WeatherResponseDtoImplCopyWithImpl<_$WeatherResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponseDto implements WeatherResponseDto {
  factory _WeatherResponseDto(
      {required final String cod,
      required final int message,
      required final int cnt,
      required final List<ForecastDto> list,
      required final CityDto city}) = _$WeatherResponseDtoImpl;

  factory _WeatherResponseDto.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseDtoImpl.fromJson;

  @override
  String get cod;
  @override
  int get message;
  @override
  int get cnt;
  @override
  List<ForecastDto> get list;
  @override
  CityDto get city;
  @override
  @JsonKey(ignore: true)
  _$$WeatherResponseDtoImplCopyWith<_$WeatherResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
