import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:maef/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:maef/app/core/theme/colors.dart';
import 'package:maef/app/core/theme/text_styles.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Page View
          PageView.builder(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.currentPage.value = index;
            },
            itemCount: controller.onboardingPages.length,
            itemBuilder: (context, index) {
              final data = controller.onboardingPages[index];
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: data.gradient,
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // Skip Button
                        Align(
                          alignment: Alignment.topRight,
                          child: Obx(
                            () =>
                                controller.currentPage.value < 2
                                    ? TextButton(
                                      onPressed: controller.skipOnboarding,
                                      child: const Text(
                                        'Skip',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                    : const SizedBox.shrink(),
                          ),
                        ),

                        const SizedBox(height: 40),

                        // Maef Logo
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'Maef',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        const Spacer(),

                        // Illustration Placeholder
                        Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              index == 0
                                  ? Icons.payment
                                  : index == 1
                                  ? Icons.handshake
                                  : Icons.security,
                              size: 80,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                        ),

                        const SizedBox(height: 60),

                        // Title
                        Text(
                          data.title,
                          style: AppTextStyles.onboardingTitle.copyWith(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 16),

                        // Subtitle
                        Text(
                          data.subtitle,
                          style: AppTextStyles.onboardingSubtitle.copyWith(
                            color: Colors.white.withOpacity(0.8),
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const Spacer(),

                        // Page Indicator
                        SmoothPageIndicator(
                          controller: controller.pageController,
                          count: controller.onboardingPages.length,
                          effect: WormEffect(
                            dotColor: Colors.white.withOpacity(0.4),
                            activeDotColor: Colors.white,
                            dotHeight: 8,
                            dotWidth: 8,
                            spacing: 16,
                          ),
                        ),

                        const SizedBox(height: 40),

                        // Get Started Button
                        Obx(
                          () => SizedBox(
                            width: double.infinity,
                            height: 56,
                            child: ElevatedButton(
                              onPressed: controller.nextPage,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: data.gradient.last,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28),
                                ),
                              ),
                              child: Text(
                                controller.currentPage.value < 2
                                    ? 'Next'
                                    : 'Get Started',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
