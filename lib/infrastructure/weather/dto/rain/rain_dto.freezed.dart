// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rain_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RainDto _$RainDtoFromJson(Map<String, dynamic> json) {
  return _RainDto.fromJson(json);
}

/// @nodoc
mixin _$RainDto {
// ignore: invalid_annotation_target
  @JsonKey(name: '3h')
  double get threeH => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainDtoCopyWith<RainDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainDtoCopyWith<$Res> {
  factory $RainDtoCopyWith(RainDto value, $Res Function(RainDto) then) =
      _$RainDtoCopyWithImpl<$Res, RainDto>;
  @useResult
  $Res call({@JsonKey(name: '3h') double threeH});
}

/// @nodoc
class _$RainDtoCopyWithImpl<$Res, $Val extends RainDto>
    implements $RainDtoCopyWith<$Res> {
  _$RainDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threeH = null,
  }) {
    return _then(_value.copyWith(
      threeH: null == threeH
          ? _value.threeH
          : threeH // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RainDtoImplCopyWith<$Res> implements $RainDtoCopyWith<$Res> {
  factory _$$RainDtoImplCopyWith(
          _$RainDtoImpl value, $Res Function(_$RainDtoImpl) then) =
      __$$RainDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '3h') double threeH});
}

/// @nodoc
class __$$RainDtoImplCopyWithImpl<$Res>
    extends _$RainDtoCopyWithImpl<$Res, _$RainDtoImpl>
    implements _$$RainDtoImplCopyWith<$Res> {
  __$$RainDtoImplCopyWithImpl(
      _$RainDtoImpl _value, $Res Function(_$RainDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threeH = null,
  }) {
    return _then(_$RainDtoImpl(
      threeH: null == threeH
          ? _value.threeH
          : threeH // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RainDtoImpl implements _RainDto {
  _$RainDtoImpl({@JsonKey(name: '3h') required this.threeH});

  factory _$RainDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainDtoImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: '3h')
  final double threeH;

  @override
  String toString() {
    return 'RainDto(threeH: $threeH)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainDtoImpl &&
            (identical(other.threeH, threeH) || other.threeH == threeH));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, threeH);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RainDtoImplCopyWith<_$RainDtoImpl> get copyWith =>
      __$$RainDtoImplCopyWithImpl<_$RainDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainDtoImplToJson(
      this,
    );
  }
}

abstract class _RainDto implements RainDto {
  factory _RainDto({@JsonKey(name: '3h') required final double threeH}) =
      _$RainDtoImpl;

  factory _RainDto.fromJson(Map<String, dynamic> json) = _$RainDtoImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: '3h')
  double get threeH;
  @override
  @JsonKey(ignore: true)
  _$$RainDtoImplCopyWith<_$RainDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
