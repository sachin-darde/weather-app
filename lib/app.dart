import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:weather_app/domain/core/configs/app_config.dart';
import 'package:weather_app/domain/core/configs/injection.dart';
import 'package:weather_app/domain/core/services/navigation_services/navigation_service.dart';
import 'package:weather_app/domain/core/services/navigation_services/routers/route_name.dart';
import 'package:weather_app/domain/core/services/navigation_services/routers/routing_config.dart';

class MainApp extends StatelessWidget with WidgetsBindingObserver {
  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (state == AppLifecycleState.resumed) {
  //     initClearNotificationsState(
  //         navigationKey: navigator<NavigationService>().navigatorKey);
  //   }
  // }

  MainApp({super.key}) {
    // WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        colorScheme: ThemeData().colorScheme.copyWith(
              inversePrimary: const Color(0xFF9CA3AF),
              onTertiary: const Color(0xFF6B7280),
              onPrimary: const Color(0xFF3B82F6),
              onSecondary: const Color(0xFFF59E0B),
              surface: const Color(0xFF10B981),
              inverseSurface: const Color(0xFF8B5CF6),
              onInverseSurface: const Color(0xFFEC4899),
            ),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          centerTitle: false,
          foregroundColor: Colors.white,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF9CA3AF),
            fontFamily: 'Inter',
            letterSpacing: 0,
          ),
          bodyMedium: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF000000),
            fontFamily: 'Inter',
            letterSpacing: 0,
          ),
          bodySmall: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF000000),
            fontFamily: 'Inter',
            letterSpacing: 0,
          ),
        ),
      ),
      builder: (context, child) {
        return Column(
          children: [
            Expanded(child: Scaffold(body: child!)),
            if (Provider.of<AppStateNotifier>(context).isOffline)
              Material(
                color: Theme.of(context).colorScheme.error,
                child: SafeArea(
                  top: false,
                  left: false,
                  right: false,
                  bottom: Platform.isIOS ? true : false,
                  child: Container(
                    alignment: Alignment.center,
                    width: 100.w,
                    height: 3.h,
                    child: Text(
                      'No Connection',
                      style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              )
          ],
        );
      },
      navigatorKey: navigator<NavigationService>().navigatorKey,
      onGenerateRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? authorizedNavigation
          : commonNavigation,
      initialRoute: Provider.of<AppStateNotifier>(context).isOffline
          ? GeneralRoutes.noNetworkAtStart
          : Provider.of<AppStateNotifier>(context).isAuthorized
              ? AuthRoutes.basicInfoRoute
              : AuthRoutes.startRoute,
    );
  }
}

Future appInitializer(AppConfig appConfig) async {
  // Future.delayed(const Duration(seconds: 5)).then((value) => monitorNetwork());

  final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  bool isOffline = false;

  AppStateNotifier appStateNotifier = AppStateNotifier(
    isAuthorized: true,
    isOffline: isOffline,
  );

  final AppConfig configuredApp = AppConfig(
    appTitle: appConfig.appTitle,
    apiClient: appConfig.apiClient,
    child: ChangeNotifierProvider<AppStateNotifier>(
      create: (context) {
        return appStateNotifier;
      },
      child: ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return MainApp();
        },
      ),
    ),
  );

  setupLocator(navKey, appStateNotifier);

  return runApp(configuredApp);
}
