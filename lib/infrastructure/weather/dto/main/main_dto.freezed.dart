// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainDto _$MainDtoFromJson(Map<String, dynamic> json) {
  return _MainDto.fromJson(json);
}

/// @nodoc
mixin _$MainDto {
  double get temp => throw _privateConstructorUsedError;
  double get feelsLike => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainDtoCopyWith<MainDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDtoCopyWith<$Res> {
  factory $MainDtoCopyWith(MainDto value, $Res Function(MainDto) then) =
      _$MainDtoCopyWithImpl<$Res, MainDto>;
  @useResult
  $Res call(
      {double temp,
      double feelsLike,
      double tempMin,
      double tempMax,
      int pressure,
      int humidity});
}

/// @nodoc
class _$MainDtoCopyWithImpl<$Res, $Val extends MainDto>
    implements $MainDtoCopyWith<$Res> {
  _$MainDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainDtoImplCopyWith<$Res> implements $MainDtoCopyWith<$Res> {
  factory _$$MainDtoImplCopyWith(
          _$MainDtoImpl value, $Res Function(_$MainDtoImpl) then) =
      __$$MainDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      double feelsLike,
      double tempMin,
      double tempMax,
      int pressure,
      int humidity});
}

/// @nodoc
class __$$MainDtoImplCopyWithImpl<$Res>
    extends _$MainDtoCopyWithImpl<$Res, _$MainDtoImpl>
    implements _$$MainDtoImplCopyWith<$Res> {
  __$$MainDtoImplCopyWithImpl(
      _$MainDtoImpl _value, $Res Function(_$MainDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
  }) {
    return _then(_$MainDtoImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$MainDtoImpl implements _MainDto {
  _$MainDtoImpl(
      {required this.temp,
      required this.feelsLike,
      required this.tempMin,
      required this.tempMax,
      required this.pressure,
      required this.humidity});

  factory _$MainDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainDtoImplFromJson(json);

  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final int pressure;
  @override
  final int humidity;

  @override
  String toString() {
    return 'MainDto(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainDtoImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, temp, feelsLike, tempMin, tempMax, pressure, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainDtoImplCopyWith<_$MainDtoImpl> get copyWith =>
      __$$MainDtoImplCopyWithImpl<_$MainDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainDtoImplToJson(
      this,
    );
  }
}

abstract class _MainDto implements MainDto {
  factory _MainDto(
      {required final double temp,
      required final double feelsLike,
      required final double tempMin,
      required final double tempMax,
      required final int pressure,
      required final int humidity}) = _$MainDtoImpl;

  factory _MainDto.fromJson(Map<String, dynamic> json) = _$MainDtoImpl.fromJson;

  @override
  double get temp;
  @override
  double get feelsLike;
  @override
  double get tempMin;
  @override
  double get tempMax;
  @override
  int get pressure;
  @override
  int get humidity;
  @override
  @JsonKey(ignore: true)
  _$$MainDtoImplCopyWith<_$MainDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
