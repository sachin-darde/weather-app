import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/core/configs/app_config.dart';
import 'package:weather_app/domain/core/helpers/generic_helpers.dart';
import 'package:weather_app/domain/weather/weather_repository.dart';
import 'package:weather_app/infrastructure/weather/dto/city/city_dto.dart';
import 'package:weather_app/infrastructure/weather/dto/forecast/forecast_dto.dart';
import 'package:weather_app/infrastructure/weather/i_weather_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(super.initState) {
    on<_OnLoad>((event, emit) async {
      final weatherResponse =
          await state.weatherRepository.fetchWeatherForecast(19.0760, 72.8777);
      final city = weatherResponse.city;
      final groupedForecasts =
          _groupForecastsByDay(weatherResponse.list, city.timezone);
      List<String> dates = groupedForecasts.keys.toList();
      emit(state.copyWith(
        groupedForecasts: groupedForecasts,
        city: city,
        dates: dates,
        currentDate: dates.first,
        currentDateIndex: 0,
        currentForecast: groupedForecasts[dates[0]]!.first,
      ));
    });

    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

    on<_UpdateCurrentDate>((event, emit) {
      state.scrollController.animateTo(0, curve: Curves.bounceIn, duration: const Duration(milliseconds: 300));
      emit(state.copyWith(
        currentDate: event.newDate,
        currentDateIndex: event.newIndex,
        currentForecast:
            state.groupedForecasts[state.dates[event.newIndex]]!.first,
      ));
    });

    on<_SwitchForecast>((event, emit) {
      emit(state.copyWith(
        currentForecast:
            event.forecast,
      ));
    });
  }

  Map<String, List<ForecastDto>> _groupForecastsByDay(
      List<ForecastDto> forecasts, int timezoneOffset) {
    final Map<String, List<ForecastDto>> groupedByDay = {};

    for (final forecast in forecasts) {
      final localTime =
          GenericHelpers.convertToLocalTime(forecast.dt, timezoneOffset);
      final String date = DateFormat('yyyy-MM-dd').format(localTime);
      if (groupedByDay.containsKey(date)) {
        groupedByDay[date]!.add(forecast);
      } else {
        groupedByDay[date] = [forecast];
      }
    }

    return groupedByDay;
  }
}
