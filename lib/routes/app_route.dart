import 'package:get/get.dart';
import 'package:kliktron_app/auth/pages/login_screen.dart';
import 'package:kliktron_app/auth/pages/otp_screen.dart';
import 'package:kliktron_app/auth/pages/register_screen.dart';
import 'package:kliktron_app/views/acces_location_screen.dart';
import 'package:kliktron_app/views/home_page.dart';
import 'package:kliktron_app/views/onboarding_screen.dart';
import 'package:kliktron_app/views/profile.dart';
import 'package:kliktron_app/views/splash_screen.dart';

class AppRoute {
  static const splash = '/';
  static const acceslocation = '/acceslocation';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const register = '/register';
  static const otp = '/otp';
  static const homepage = '/home_page';
  static const profile = '/profile';

  static final routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: acceslocation, page: () => AccessLocationScreen()),
    GetPage(name: onboarding, page: () => OnboardingScreen()),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: register, page: () => RegisterScreen()),
    GetPage(name: otp, page: () => OtpVerificationScreen(phoneNumber: '',)),
    GetPage(name: homepage, page: () => HomeView()),
    GetPage(name: profile, page: () => ProfileScreen()),
  ];
}
