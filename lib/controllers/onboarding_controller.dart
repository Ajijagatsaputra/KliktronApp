import 'package:get/get.dart';
import '../models/onboarding_model.dart';

class OnboardingController extends GetxController {
  var currentIndex = 0.obs;

  List<OnboardingModel> onboardingData = [
    // OnboardingModel(image: 'assets/splashScreen/logokliktron.png', title: '', description: ''),
    OnboardingModel(
      image: 'assets/onboardingScreen/start_advertising.png',
      title: 'Start Advertising with Ease',
      description: 'Choose a location, upload your content, and launch campaigns quickly.',
    ),
    OnboardingModel(
      image: 'assets/onboardingScreen/mobility.png',
      title: 'Mobility for Maximum Reach',
      description: 'Use mobile advertising to reach more people wherever they are.',
    ),
    OnboardingModel(
      image: 'assets/onboardingScreen/customizable.png',
      title: 'Customizable for Your Needs',
      description: 'Transform vehicles into impactful ads or event platforms.',
    ),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
