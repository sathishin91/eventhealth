import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';
import '../routes/route_generator.dart';
import '../utils/common.dart';
import 'animate/slide_fade_animator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    _launchNextScreen();
    return const SafeArea(
      child: Scaffold(
        backgroundColor: ThemeConstants.white,
        body: Center(
          child: SlideFadeAnimator(
            child: AppLogo(),
          ),
        ),
      ),
    );
  }

  void _launchNextScreen() {
    // Future.delayed(
    //   const Duration(seconds: 2),
    //   () => Navigator.pushNamed(
    //     context,
    //     Routes.loginScreen,
    //   ),
    // );
  }
}
