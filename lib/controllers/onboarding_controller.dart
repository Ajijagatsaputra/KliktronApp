import 'package:get/get.dart';
import '../models/onboarding_model.dart';

class OnboardingController extends GetxController {
  var currentIndex = 0.obs;

  List<OnboardingModel> onboardingData = [
    // OnboardingModel(image: 'assets/splashScreen/logokliktron.png', title: '', description: ''),
    OnboardingModel(
      image: 'assets/onboardingScreen/ONBOARDING 1.jpg',
      title: 'Start Advertising with Ease',
      description: 'Choose a location, upload your content, and launch campaigns quickly.',
    ),
    OnboardingModel(
      image: 'assets/onboardingScreen/ONBOARDING 2.jpg',
      title: 'Mobility for Maximum Reach',
      description: 'Use mobile advertising to reach more people wherever they are.',
    ),
    OnboardingModel(
      image: 'assets/onboardingScreen/ONBOARDING 3.jpg',
      title: 'Customizable for Your Needs',
      description: 'Transform vehicles into impactful ads or event platforms.',
    ),
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
