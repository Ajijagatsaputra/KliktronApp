import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliktron_app/routes/app_route.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoute.acceslocation); // Navigasi ke OnboardingScreen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1268F7), // Format hexadecimal
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/splashScreen/logokliktron.png', height: 100), // Ganti sesuai aset Anda
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
