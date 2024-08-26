import 'package:intl/intl.dart';
import 'dart:math';

import 'package:weather_app/domain/core/constants/asset_constants.dart';

class GenericHelpers {
  static String dateFormatter(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final targetDate = DateTime(date.year, date.month, date.day);

    if (targetDate == today) {
      return 'Today, ${DateFormat('dd MMM yy').format(date)}';
    } else if (targetDate == today.subtract(const Duration(days: 1))) {
      return 'Yesterday, ${DateFormat('dd MMM yy').format(date)}';
    } else if (targetDate == today.add(const Duration(days: 1))) {
      return 'Tomorrow, ${DateFormat('dd MMM yy').format(date)}';
    } else {
      return DateFormat('EEE, dd MMM yy')
          .format(date); // e.g., "Mon, 10 Aug 24"
    }
  }

  static DateTime convertToLocalTime(
      int utcTimeInSeconds, int timezoneOffsetInSeconds) {
    DateTime utcDateTime = DateTime.fromMillisecondsSinceEpoch(
        utcTimeInSeconds * 1000,
        isUtc: true);

    DateTime localDateTime =
        utcDateTime.add(Duration(seconds: timezoneOffsetInSeconds));

    return localDateTime;
  }

  static double calculateDewPoint(
      double temperatureCelsius, double relativeHumidity) {
    const double a = 17.27;
    const double b = 237.7;

    double alpha = (a * temperatureCelsius) / (b + temperatureCelsius) +
        log(relativeHumidity / 100);

    double dewPoint = (b * alpha) / (a - alpha);
    return dewPoint;
  }

  static String getVisibilityDescription(double visibilityInKm) {
    if (visibilityInKm > 10) {
      return 'Clear visibility.';
    } else if (visibilityInKm > 6) {
      return 'Good visibility.';
    } else if (visibilityInKm > 3) {
      return 'Moderate visibility.';
    } else if (visibilityInKm > 1) {
      return 'Poor visibility.';
    } else {
      return 'Very poor visibility.';
    }
  }

  static String getCloudCoverageDescription(int cloudPercentage) {
    if (cloudPercentage <= 10) {
      return 'Clear sky';
    } else if (cloudPercentage <= 30) {
      return 'Mostly clear';
    } else if (cloudPercentage <= 50) {
      return 'Partly cloudy';
    } else if (cloudPercentage <= 80) {
      return 'Mostly cloudy';
    } else {
      return 'Overcast';
    }
  }

  static String getWindDirection(int degree) {
    if (degree >= 337.5 || degree < 22.5) {
      return 'N';
    } else if (degree >= 22.5 && degree < 67.5) {
      return 'NE';
    } else if (degree >= 67.5 && degree < 112.5) {
      return 'E';
    } else if (degree >= 112.5 && degree < 157.5) {
      return 'SE';
    } else if (degree >= 157.5 && degree < 202.5) {
      return 'S';
    } else if (degree >= 202.5 && degree < 247.5) {
      return 'SW';
    } else if (degree >= 247.5 && degree < 292.5) {
      return 'W';
    } else if (degree >= 292.5 && degree < 337.5) {
      return 'NW';
    }
    return 'N';
  }

  String getDayOrNightImage(
      DateTime currentTime, DateTime sunrise, DateTime sunset) {
    if (currentTime.isAfter(sunrise) && currentTime.isBefore(sunset)) {
      return AssetConstants.sun;
    } else {
      return AssetConstants.moon;
    }
  }

  static String getWeatherImage(String weatherCondition) {
    switch (weatherCondition.toLowerCase()) {
      case 'rain':
      case 'light rain':
      case 'shower rain':
        return AssetConstants.showerWeather;
      case 'clouds':
      case 'cloudy':
        return AssetConstants.cloudyWeather;
      case 'thunderstorm':
        return AssetConstants.thunderStorm;
      case 'clear':
      case 'clear sky':
        return AssetConstants.moon;
      default:
        return AssetConstants.cloudyWeather;
    }
  }
}
