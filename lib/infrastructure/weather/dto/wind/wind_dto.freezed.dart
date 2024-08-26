// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wind_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WindDto _$WindDtoFromJson(Map<String, dynamic> json) {
  return _WindDto.fromJson(json);
}

/// @nodoc
mixin _$WindDto {
  double get speed => throw _privateConstructorUsedError;
  int get deg => throw _privateConstructorUsedError;
  double get gust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindDtoCopyWith<WindDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindDtoCopyWith<$Res> {
  factory $WindDtoCopyWith(WindDto value, $Res Function(WindDto) then) =
      _$WindDtoCopyWithImpl<$Res, WindDto>;
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class _$WindDtoCopyWithImpl<$Res, $Val extends WindDto>
    implements $WindDtoCopyWith<$Res> {
  _$WindDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: null == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WindDtoImplCopyWith<$Res> implements $WindDtoCopyWith<$Res> {
  factory _$$WindDtoImplCopyWith(
          _$WindDtoImpl value, $Res Function(_$WindDtoImpl) then) =
      __$$WindDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class __$$WindDtoImplCopyWithImpl<$Res>
    extends _$WindDtoCopyWithImpl<$Res, _$WindDtoImpl>
    implements _$$WindDtoImplCopyWith<$Res> {
  __$$WindDtoImplCopyWithImpl(
      _$WindDtoImpl _value, $Res Function(_$WindDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = null,
  }) {
    return _then(_$WindDtoImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: null == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$WindDtoImpl implements _WindDto {
  _$WindDtoImpl({required this.speed, required this.deg, required this.gust});

  factory _$WindDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindDtoImplFromJson(json);

  @override
  final double speed;
  @override
  final int deg;
  @override
  final double gust;

  @override
  String toString() {
    return 'WindDto(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindDtoImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            (identical(other.gust, gust) || other.gust == gust));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg, gust);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WindDtoImplCopyWith<_$WindDtoImpl> get copyWith =>
      __$$WindDtoImplCopyWithImpl<_$WindDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindDtoImplToJson(
      this,
    );
  }
}

abstract class _WindDto implements WindDto {
  factory _WindDto(
      {required final double speed,
      required final int deg,
      required final double gust}) = _$WindDtoImpl;

  factory _WindDto.fromJson(Map<String, dynamic> json) = _$WindDtoImpl.fromJson;

  @override
  double get speed;
  @override
  int get deg;
  @override
  double get gust;
  @override
  @JsonKey(ignore: true)
  _$$WindDtoImplCopyWith<_$WindDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
