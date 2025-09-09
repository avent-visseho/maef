import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:maef/app/modules/splash/controllers/splash_controller.dart';
import 'package:maef/app/core/theme/colors.dart';
import 'package:maef/app/core/theme/text_styles.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Animation
              Obx(
                () => AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.elasticOut,
                  transform:
                      Matrix4.identity()
                        ..scale(controller.isLogoAnimated.value ? 1.0 : 0.0),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.account_balance_wallet,
                        size: 60,
                        color: AppColors.primaryPurple,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // App Name with Animation
              Obx(
                () =>
                    controller.isTextAnimated.value
                        ? Column(
                          children: [
                            // App Name Animation
                            DefaultTextStyle(
                              style: AppTextStyles.logoText,
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    'Maef By Yas',
                                    speed: const Duration(milliseconds: 200),
                                  ),
                                ],
                                totalRepeatCount: 1,
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Subtitle Animation
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                                fontWeight: FontWeight.w400,
                              ),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    'Money et Market Connecting You Through Payments',
                                    textAlign: TextAlign.center,
                                    speed: const Duration(milliseconds: 50),
                                  ),
                                ],
                                totalRepeatCount: 1,
                              ),
                            ),
                          ],
                        )
                        : const SizedBox.shrink(),
              ),

              const SizedBox(height: 80),

              // Loading Indicator
              Obx(
                () =>
                    controller.isTextAnimated.value
                        ? const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                          strokeWidth: 2,
                        )
                        : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
