import 'package:get/get.dart';
import 'package:kliktron_app/auth/pages/login_screen.dart';
import 'package:kliktron_app/auth/pages/otp_screen.dart';
import 'package:kliktron_app/auth/pages/register_screen.dart';
import 'package:kliktron_app/views/onboarding_screen.dart';
import 'package:kliktron_app/views/splash_screen.dart';

class AppRoute {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const register = '/register';
  static const otp = '/otp';

  static final routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: onboarding, page: () => OnboardingScreen()),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: register, page: () => RegisterScreen()),
    GetPage(name: otp, page: () => OtpVerificationScreen(phoneNumber: '',)),
  ];
}
