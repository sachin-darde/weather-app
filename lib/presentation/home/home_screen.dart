import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/application/home_bloc/home_bloc.dart';
import 'package:weather_app/domain/core/configs/app_config.dart';
import 'package:weather_app/presentation/home/widgets/date_forecast.dart';
import 'package:weather_app/presentation/home/widgets/forecast_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppConfig appConfig = AppConfig.of(context)!;
    return BlocProvider(
      create: (context) => HomeBloc(HomeState.initial(appConfig: appConfig))
        ..add(const HomeEvent.onLoad()),
      child: const HomeScreenConsumer(),
    );
  }
}

class HomeScreenConsumer extends StatelessWidget {
  const HomeScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return const Scaffold(
            body: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Stack(
                children: [DateForecast(), ForecastDetails()],
              ),
            ),
          );
        });
  }
}
