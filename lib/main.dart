import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/domain/core/api/api_client.dart';
import 'package:weather_app/domain/core/configs/app_config.dart';

void main() async {
  Dio dio = Dio();
  final appConfig = AppConfig(
    appTitle: 'Weather App',
    apiClient: ApiClient(dio: dio, appid: '37ea9939152496e5de6ca532f93817fd'),
    child: Container(),
  );
  appInitializer(appConfig);
}
