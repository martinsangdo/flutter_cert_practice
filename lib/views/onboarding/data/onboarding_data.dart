import '../../../core/constants/app_images.dart';
import 'onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      imageUrl: AppImages.onboarding1,
      headline: 'Explore practice tests',
      description:
          'Practice tests help you prepare for your exams and pass them at the first attempt.',
    ),
  ];
}
