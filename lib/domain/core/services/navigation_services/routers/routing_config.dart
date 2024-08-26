import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/presentation/home/home_screen.dart';

Route<dynamic> authorizedNavigation(RouteSettings settings) {
  // final routingData = settings.name!.getRoutingData;

  return commonNavigation(settings);
}

Route<dynamic> commonNavigation(RouteSettings settings) {
  // final routingData = settings.name!.getRoutingData;

  return _getPageRoute(const HomeScreen(), settings);
}

PageRoute _getPageRoute(
  Widget child,
  RouteSettings settings, {
  bool mainRoute = false,
}) {
  //return CupertinoRoute(enterPage: child);
  if (Platform.isIOS && !mainRoute) {
    return CupertinoPageRoute(builder: (BuildContext context) => child);
  } else {
    return MaterialPageRoute(builder: (BuildContext context) => child);
  }
}
