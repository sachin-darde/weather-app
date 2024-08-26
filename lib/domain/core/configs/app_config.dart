import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isAuthorized;
  bool isOffline;

  AppStateNotifier({
    required this.isAuthorized,
    required this.isOffline,
  });

  void onMenuChange({
    required int index,
    bool goToTop = false,
  }) async {
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 500));
  }
}

class AppConfig extends InheritedWidget {
  final String appTitle;

  @override
  // ignore: overridden_fields
  final Widget child;

  const AppConfig({
    super.key,
    required this.appTitle,
    required this.child,
  }) : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
