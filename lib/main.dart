import 'package:flutter/material.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/domain/core/configs/app_config.dart';

void main() async {
  final appConfig = AppConfig(
    appTitle: 'Weather App',
    child: Container(),
  );
  appInitializer(appConfig);
}
