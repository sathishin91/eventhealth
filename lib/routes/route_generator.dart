import 'package:flutter/material.dart';

import '../presenter/splash_screen.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
    return _errorRoute();
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text("ERROR"),
          ),
        );
      },
    );
  }

  Route<dynamic> _comingSoonRoute() => MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text(""),
          ),
          body: const Center(
            child: Text(
              "Coming soon!!",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      );

  void dispose() {}
}

class Routes {
  static const String initial = "/";
  static const String dashboard = "dashboard";
  static const String accountCreation = "accountCreation";
  static const String skillSuggestion = "skillSuggestion";

  static const String basicInfo = "basicInfo";
  static const String educationInfo = "educationInfo";
  static const String experienceInfo = "experienceInfo";
  static const String skillInfo = "skillInfo";

  //login
  static const String loginScreen = "loginScreen";
  static const String loginOTPScreen = "loginOTPScreen";

  //apply job
  static const String applyJob = "applyJob";
}
