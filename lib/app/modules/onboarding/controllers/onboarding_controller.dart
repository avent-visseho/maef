import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maef/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentPage = 0.obs;

  final List<OnboardingData> onboardingPages = [
    OnboardingData(
      title: "Receive payment\nworldwide",
      subtitle: "Get paid instantly from anywhere, with no borders",
      imagePath: "assets/images/djo.jpg", // You'll need to add these images
      gradient: [Color(0xFFE1BEE7), Color(0xFF9C27B0)],
    ),
    OnboardingData(
      title: "Welcome to Maef",
      subtitle: "Send and receive money instantly - anytime, anywhere",
      imagePath: "assets/images/onboarding1.jpg",
      gradient: [Color(0xFFBCAAA4), Color(0xFF8D6E63)],
    ),
    OnboardingData(
      title: "Secure & Fast\nTransactions",
      subtitle: "Your money is safe with our advanced security features",
      imagePath: "assets/images/onboarding2.jpg",
      gradient: [Color(0xFF90CAF9), Color(0xFF1976D2)],
    ),
  ];

  void nextPage() {
    if (currentPage.value < onboardingPages.length - 1) {
      currentPage.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to login
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      currentPage.value--;
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipOnboarding() {
    Get.offAllNamed(Routes.LOGIN);
  }

  void goToPage(int page) {
    currentPage.value = page;
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}

class OnboardingData {
  final String title;
  final String subtitle;
  final String imagePath;
  final List<Color> gradient;

  OnboardingData({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.gradient,
  });
}
