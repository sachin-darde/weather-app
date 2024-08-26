import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/domain/core/services/navigation_services/navigation_service.dart';
import 'app_config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureInjection() => getIt();

GetIt navigator = GetIt.instance;

void setupLocator(
    GlobalKey<NavigatorState> navKey, AppStateNotifier appStateNotifier) {
  navigator.registerFactory(() => NavigationService(navKey, appStateNotifier));
}
