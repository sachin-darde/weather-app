// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(ForecastDto forecast) switchForecast,
    required TResult Function(String newDate, int newIndex) updateCurrentDate,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoad,
    TResult? Function(ForecastDto forecast)? switchForecast,
    TResult? Function(String newDate, int newIndex)? updateCurrentDate,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(ForecastDto forecast)? switchForecast,
    TResult Function(String newDate, int newIndex)? updateCurrentDate,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_SwitchForecast value) switchForecast,
    required TResult Function(_UpdateCurrentDate value) updateCurrentDate,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_SwitchForecast value)? switchForecast,
    TResult? Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_SwitchForecast value)? switchForecast,
    TResult Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnLoadImplCopyWith<$Res> {
  factory _$$OnLoadImplCopyWith(
          _$OnLoadImpl value, $Res Function(_$OnLoadImpl) then) =
      __$$OnLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnLoadImpl>
    implements _$$OnLoadImplCopyWith<$Res> {
  __$$OnLoadImplCopyWithImpl(
      _$OnLoadImpl _value, $Res Function(_$OnLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLoadImpl implements _OnLoad {
  const _$OnLoadImpl();

  @override
  String toString() {
    return 'HomeEvent.onLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(ForecastDto forecast) switchForecast,
    required TResult Function(String newDate, int newIndex) updateCurrentDate,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoad,
    TResult? Function(ForecastDto forecast)? switchForecast,
    TResult? Function(String newDate, int newIndex)? updateCurrentDate,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(ForecastDto forecast)? switchForecast,
    TResult Function(String newDate, int newIndex)? updateCurrentDate,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_SwitchForecast value) switchForecast,
    required TResult Function(_UpdateCurrentDate value) updateCurrentDate,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_SwitchForecast value)? switchForecast,
    TResult? Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_SwitchForecast value)? switchForecast,
    TResult Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class _OnLoad implements HomeEvent {
  const factory _OnLoad() = _$OnLoadImpl;
}

/// @nodoc
abstract class _$$SwitchForecastImplCopyWith<$Res> {
  factory _$$SwitchForecastImplCopyWith(_$SwitchForecastImpl value,
          $Res Function(_$SwitchForecastImpl) then) =
      __$$SwitchForecastImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ForecastDto forecast});

  $ForecastDtoCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$SwitchForecastImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SwitchForecastImpl>
    implements _$$SwitchForecastImplCopyWith<$Res> {
  __$$SwitchForecastImplCopyWithImpl(
      _$SwitchForecastImpl _value, $Res Function(_$SwitchForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
  }) {
    return _then(_$SwitchForecastImpl(
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastDtoCopyWith<$Res> get forecast {
    return $ForecastDtoCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value));
    });
  }
}

/// @nodoc

class _$SwitchForecastImpl implements _SwitchForecast {
  const _$SwitchForecastImpl({required this.forecast});

  @override
  final ForecastDto forecast;

  @override
  String toString() {
    return 'HomeEvent.switchForecast(forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchForecastImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchForecastImplCopyWith<_$SwitchForecastImpl> get copyWith =>
      __$$SwitchForecastImplCopyWithImpl<_$SwitchForecastImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(ForecastDto forecast) switchForecast,
    required TResult Function(String newDate, int newIndex) updateCurrentDate,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return switchForecast(forecast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoad,
    TResult? Function(ForecastDto forecast)? switchForecast,
    TResult? Function(String newDate, int newIndex)? updateCurrentDate,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) {
    return switchForecast?.call(forecast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(ForecastDto forecast)? switchForecast,
    TResult Function(String newDate, int newIndex)? updateCurrentDate,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (switchForecast != null) {
      return switchForecast(forecast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_SwitchForecast value) switchForecast,
    required TResult Function(_UpdateCurrentDate value) updateCurrentDate,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return switchForecast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_SwitchForecast value)? switchForecast,
    TResult? Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return switchForecast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_SwitchForecast value)? switchForecast,
    TResult Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (switchForecast != null) {
      return switchForecast(this);
    }
    return orElse();
  }
}

abstract class _SwitchForecast implements HomeEvent {
  const factory _SwitchForecast({required final ForecastDto forecast}) =
      _$SwitchForecastImpl;

  ForecastDto get forecast;
  @JsonKey(ignore: true)
  _$$SwitchForecastImplCopyWith<_$SwitchForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentDateImplCopyWith<$Res> {
  factory _$$UpdateCurrentDateImplCopyWith(_$UpdateCurrentDateImpl value,
          $Res Function(_$UpdateCurrentDateImpl) then) =
      __$$UpdateCurrentDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newDate, int newIndex});
}

/// @nodoc
class __$$UpdateCurrentDateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateCurrentDateImpl>
    implements _$$UpdateCurrentDateImplCopyWith<$Res> {
  __$$UpdateCurrentDateImplCopyWithImpl(_$UpdateCurrentDateImpl _value,
      $Res Function(_$UpdateCurrentDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDate = null,
    Object? newIndex = null,
  }) {
    return _then(_$UpdateCurrentDateImpl(
      newDate: null == newDate
          ? _value.newDate
          : newDate // ignore: cast_nullable_to_non_nullable
              as String,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentDateImpl implements _UpdateCurrentDate {
  const _$UpdateCurrentDateImpl(
      {required this.newDate, required this.newIndex});

  @override
  final String newDate;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'HomeEvent.updateCurrentDate(newDate: $newDate, newIndex: $newIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentDateImpl &&
            (identical(other.newDate, newDate) || other.newDate == newDate) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDate, newIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentDateImplCopyWith<_$UpdateCurrentDateImpl> get copyWith =>
      __$$UpdateCurrentDateImplCopyWithImpl<_$UpdateCurrentDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(ForecastDto forecast) switchForecast,
    required TResult Function(String newDate, int newIndex) updateCurrentDate,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return updateCurrentDate(newDate, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoad,
    TResult? Function(ForecastDto forecast)? switchForecast,
    TResult? Function(String newDate, int newIndex)? updateCurrentDate,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) {
    return updateCurrentDate?.call(newDate, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(ForecastDto forecast)? switchForecast,
    TResult Function(String newDate, int newIndex)? updateCurrentDate,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (updateCurrentDate != null) {
      return updateCurrentDate(newDate, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_SwitchForecast value) switchForecast,
    required TResult Function(_UpdateCurrentDate value) updateCurrentDate,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return updateCurrentDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_SwitchForecast value)? switchForecast,
    TResult? Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return updateCurrentDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_SwitchForecast value)? switchForecast,
    TResult Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (updateCurrentDate != null) {
      return updateCurrentDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentDate implements HomeEvent {
  const factory _UpdateCurrentDate(
      {required final String newDate,
      required final int newIndex}) = _$UpdateCurrentDateImpl;

  String get newDate;
  int get newIndex;
  @JsonKey(ignore: true)
  _$$UpdateCurrentDateImplCopyWith<_$UpdateCurrentDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmitFromAnywhereImplCopyWith<$Res> {
  factory _$$EmitFromAnywhereImplCopyWith(_$EmitFromAnywhereImpl value,
          $Res Function(_$EmitFromAnywhereImpl) then) =
      __$$EmitFromAnywhereImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeState state});

  $HomeStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$EmitFromAnywhereImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$EmitFromAnywhereImpl>
    implements _$$EmitFromAnywhereImplCopyWith<$Res> {
  __$$EmitFromAnywhereImplCopyWithImpl(_$EmitFromAnywhereImpl _value,
      $Res Function(_$EmitFromAnywhereImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$EmitFromAnywhereImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as HomeState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<$Res> get state {
    return $HomeStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$EmitFromAnywhereImpl implements _EmitFromAnywhere {
  const _$EmitFromAnywhereImpl({required this.state});

  @override
  final HomeState state;

  @override
  String toString() {
    return 'HomeEvent.emitFromAnywhere(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitFromAnywhereImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitFromAnywhereImplCopyWith<_$EmitFromAnywhereImpl> get copyWith =>
      __$$EmitFromAnywhereImplCopyWithImpl<_$EmitFromAnywhereImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(ForecastDto forecast) switchForecast,
    required TResult Function(String newDate, int newIndex) updateCurrentDate,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onLoad,
    TResult? Function(ForecastDto forecast)? switchForecast,
    TResult? Function(String newDate, int newIndex)? updateCurrentDate,
    TResult? Function(HomeState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(ForecastDto forecast)? switchForecast,
    TResult Function(String newDate, int newIndex)? updateCurrentDate,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_SwitchForecast value) switchForecast,
    required TResult Function(_UpdateCurrentDate value) updateCurrentDate,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoad value)? onLoad,
    TResult? Function(_SwitchForecast value)? switchForecast,
    TResult? Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult? Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_SwitchForecast value)? switchForecast,
    TResult Function(_UpdateCurrentDate value)? updateCurrentDate,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements HomeEvent {
  const factory _EmitFromAnywhere({required final HomeState state}) =
      _$EmitFromAnywhereImpl;

  HomeState get state;
  @JsonKey(ignore: true)
  _$$EmitFromAnywhereImplCopyWith<_$EmitFromAnywhereImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  WeatherRepository get weatherRepository => throw _privateConstructorUsedError;
  Map<String, List<ForecastDto>> get groupedForecasts =>
      throw _privateConstructorUsedError;
  List<String> get dates => throw _privateConstructorUsedError;
  String? get currentDate => throw _privateConstructorUsedError;
  int get currentDateIndex => throw _privateConstructorUsedError;
  ForecastDto? get currentForecast => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  CityDto? get city => throw _privateConstructorUsedError;
  bool get locationAccessGranted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      WeatherRepository weatherRepository,
      Map<String, List<ForecastDto>> groupedForecasts,
      List<String> dates,
      String? currentDate,
      int currentDateIndex,
      ForecastDto? currentForecast,
      ScrollController scrollController,
      CityDto? city,
      bool locationAccessGranted});

  $ForecastDtoCopyWith<$Res>? get currentForecast;
  $CityDtoCopyWith<$Res>? get city;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? weatherRepository = null,
    Object? groupedForecasts = null,
    Object? dates = null,
    Object? currentDate = freezed,
    Object? currentDateIndex = null,
    Object? currentForecast = freezed,
    Object? scrollController = null,
    Object? city = freezed,
    Object? locationAccessGranted = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherRepository: null == weatherRepository
          ? _value.weatherRepository
          : weatherRepository // ignore: cast_nullable_to_non_nullable
              as WeatherRepository,
      groupedForecasts: null == groupedForecasts
          ? _value.groupedForecasts
          : groupedForecasts // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ForecastDto>>,
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentDate: freezed == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDateIndex: null == currentDateIndex
          ? _value.currentDateIndex
          : currentDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentForecast: freezed == currentForecast
          ? _value.currentForecast
          : currentForecast // ignore: cast_nullable_to_non_nullable
              as ForecastDto?,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDto?,
      locationAccessGranted: null == locationAccessGranted
          ? _value.locationAccessGranted
          : locationAccessGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastDtoCopyWith<$Res>? get currentForecast {
    if (_value.currentForecast == null) {
      return null;
    }

    return $ForecastDtoCopyWith<$Res>(_value.currentForecast!, (value) {
      return _then(_value.copyWith(currentForecast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityDtoCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityDtoCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      WeatherRepository weatherRepository,
      Map<String, List<ForecastDto>> groupedForecasts,
      List<String> dates,
      String? currentDate,
      int currentDateIndex,
      ForecastDto? currentForecast,
      ScrollController scrollController,
      CityDto? city,
      bool locationAccessGranted});

  @override
  $ForecastDtoCopyWith<$Res>? get currentForecast;
  @override
  $CityDtoCopyWith<$Res>? get city;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? weatherRepository = null,
    Object? groupedForecasts = null,
    Object? dates = null,
    Object? currentDate = freezed,
    Object? currentDateIndex = null,
    Object? currentForecast = freezed,
    Object? scrollController = null,
    Object? city = freezed,
    Object? locationAccessGranted = null,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weatherRepository: null == weatherRepository
          ? _value.weatherRepository
          : weatherRepository // ignore: cast_nullable_to_non_nullable
              as WeatherRepository,
      groupedForecasts: null == groupedForecasts
          ? _value._groupedForecasts
          : groupedForecasts // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ForecastDto>>,
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentDate: freezed == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDateIndex: null == currentDateIndex
          ? _value.currentDateIndex
          : currentDateIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentForecast: freezed == currentForecast
          ? _value.currentForecast
          : currentForecast // ignore: cast_nullable_to_non_nullable
              as ForecastDto?,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDto?,
      locationAccessGranted: null == locationAccessGranted
          ? _value.locationAccessGranted
          : locationAccessGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.isLoading,
      required this.weatherRepository,
      required final Map<String, List<ForecastDto>> groupedForecasts,
      required final List<String> dates,
      this.currentDate,
      required this.currentDateIndex,
      this.currentForecast,
      required this.scrollController,
      this.city,
      required this.locationAccessGranted})
      : _groupedForecasts = groupedForecasts,
        _dates = dates;

  @override
  final bool isLoading;
  @override
  final WeatherRepository weatherRepository;
  final Map<String, List<ForecastDto>> _groupedForecasts;
  @override
  Map<String, List<ForecastDto>> get groupedForecasts {
    if (_groupedForecasts is EqualUnmodifiableMapView) return _groupedForecasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_groupedForecasts);
  }

  final List<String> _dates;
  @override
  List<String> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  @override
  final String? currentDate;
  @override
  final int currentDateIndex;
  @override
  final ForecastDto? currentForecast;
  @override
  final ScrollController scrollController;
  @override
  final CityDto? city;
  @override
  final bool locationAccessGranted;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, weatherRepository: $weatherRepository, groupedForecasts: $groupedForecasts, dates: $dates, currentDate: $currentDate, currentDateIndex: $currentDateIndex, currentForecast: $currentForecast, scrollController: $scrollController, city: $city, locationAccessGranted: $locationAccessGranted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.weatherRepository, weatherRepository) ||
                other.weatherRepository == weatherRepository) &&
            const DeepCollectionEquality()
                .equals(other._groupedForecasts, _groupedForecasts) &&
            const DeepCollectionEquality().equals(other._dates, _dates) &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            (identical(other.currentDateIndex, currentDateIndex) ||
                other.currentDateIndex == currentDateIndex) &&
            (identical(other.currentForecast, currentForecast) ||
                other.currentForecast == currentForecast) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.locationAccessGranted, locationAccessGranted) ||
                other.locationAccessGranted == locationAccessGranted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      weatherRepository,
      const DeepCollectionEquality().hash(_groupedForecasts),
      const DeepCollectionEquality().hash(_dates),
      currentDate,
      currentDateIndex,
      currentForecast,
      scrollController,
      city,
      locationAccessGranted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final WeatherRepository weatherRepository,
      required final Map<String, List<ForecastDto>> groupedForecasts,
      required final List<String> dates,
      final String? currentDate,
      required final int currentDateIndex,
      final ForecastDto? currentForecast,
      required final ScrollController scrollController,
      final CityDto? city,
      required final bool locationAccessGranted}) = _$HomeStateImpl;

  @override
  bool get isLoading;
  @override
  WeatherRepository get weatherRepository;
  @override
  Map<String, List<ForecastDto>> get groupedForecasts;
  @override
  List<String> get dates;
  @override
  String? get currentDate;
  @override
  int get currentDateIndex;
  @override
  ForecastDto? get currentForecast;
  @override
  ScrollController get scrollController;
  @override
  CityDto? get city;
  @override
  bool get locationAccessGranted;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
