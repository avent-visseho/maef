import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors (Gradient Purple like Transa)
  static const Color primaryPurple = Color(0xFF9C27B0);
  static const Color primaryPurpleDark = Color(0xFF7B1FA2);
  static const Color primaryPurpleLight = Color(0xFFBA68C8);

  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF9C27B0), Color(0xFF7B1FA2)],
  );

  static const LinearGradient purpleGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFE1BEE7), Color(0xFF9C27B0), Color(0xFF7B1FA2)],
  );

  // Text Colors
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textLight = Color(0xFFBDBDBD);
  static const Color textWhite = Color(0xFFFFFFFF);

  // Background Colors
  static const Color background = Color(0xFFFAFAFA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF5F5F5);

  // Accent Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFF44336);
  static const Color warning = Color(0xFFFF9800);
  static const Color info = Color(0xFF2196F3);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF9C27B0);
  static const Color buttonSecondary = Color(0xFFE1BEE7);
  static const Color buttonDisabled = Color(0xFFE0E0E0);

  // Border Colors
  static const Color border = Color(0xFFE0E0E0);
  static const Color borderFocus = Color(0xFF9C27B0);

  // Onboarding specific colors
  static const Color onboardingBackground = Color(0xFFF3E5F5);
  static const Color indicatorActive = Color(0xFF9C27B0);
  static const Color indicatorInactive = Color(0xFFE1BEE7);
}
