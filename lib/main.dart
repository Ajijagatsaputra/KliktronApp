import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliktron_app/auth/pages/otp_screen.dart';
import 'package:kliktron_app/bindings/initial_binding.dart';
import 'package:kliktron_app/routes/app_route.dart';
import 'package:kliktron_app/views/acces_location_screen.dart';
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
      initialRoute: AppRoute.splash,
      getPages: AppRoute.routes,
      // home: AccessLocationScreen(),
    );
  }
}
