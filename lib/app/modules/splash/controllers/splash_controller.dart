import 'package:get/get.dart';
import 'package:maef/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final RxBool isLogoAnimated = false.obs;
  final RxBool isTextAnimated = false.obs;

  @override
  void onInit() {
    super.onInit();
    _startAnimation();
  }

  void _startAnimation() async {
    // Start logo animation
    await Future.delayed(const Duration(milliseconds: 500));
    isLogoAnimated.value = true;

    // Start text animation after logo
    await Future.delayed(const Duration(milliseconds: 800));
    isTextAnimated.value = true;

    // Navigate to onboarding after animations
    await Future.delayed(const Duration(milliseconds: 3000));
    _navigateToNext();
  }

  void _navigateToNext() {
    // Check if user is first time or logged in
    // For now, navigate to onboarding
    Get.offAllNamed(Routes.ONBOARDING);
  }
}
