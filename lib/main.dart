import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliktron_app/bindings/initial_binding.dart';
import 'package:kliktron_app/views/splash_screen.dart';
import 'package:kliktron_app/views/onboarding_screen.dart'; // Import OnboardingScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kliktron',
      initialBinding: InitialBinding(),
      debugShowCheckedModeBanner: false,
      home: SplashToOnboarding(),
    );
  }
}

class SplashToOnboarding extends StatefulWidget {
  @override
  _SplashToOnboardingState createState() => _SplashToOnboardingState();
}

class _SplashToOnboardingState extends State<SplashToOnboarding> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
