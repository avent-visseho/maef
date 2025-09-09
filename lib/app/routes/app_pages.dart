import 'package:get/get.dart';

import 'package:maef/app/modules/splash/bindings/splash_binding.dart';
import 'package:maef/app/modules/splash/views/splash_view.dart';
import 'package:maef/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:maef/app/modules/onboarding/views/onboarding_view.dart';
import 'package:maef/app/modules/auth/bindings/auth_binding.dart';
import 'package:maef/app/modules/auth/views/login_view.dart';
import 'package:maef/app/modules/auth/views/register_view.dart';
import 'package:maef/app/modules/auth/views/forgot_password_view.dart';
import 'package:maef/app/modules/auth/views/pin_auth_view.dart';
import 'package:maef/app/modules/auth/views/biometric_auth_view.dart';
import 'package:maef/app/modules/home/bindings/home_binding.dart';
import 'package:maef/app/modules/home/views/home_view.dart';
import 'package:maef/app/modules/home/views/stories_view.dart';
import 'package:maef/app/modules/profile/bindings/profile_binding.dart';
import 'package:maef/app/modules/profile/views/profile_view.dart';
import 'package:maef/app/modules/profile/views/edit_profile_view.dart';
import 'package:maef/app/modules/profile/views/settings_view.dart';
import 'package:maef/app/modules/cart/bindings/cart_binding.dart';
import 'package:maef/app/modules/cart/views/cart_view.dart';
import 'package:maef/app/modules/cart/views/checkout_view.dart';
import 'package:maef/app/modules/orders/bindings/order_binding.dart';
import 'package:maef/app/modules/orders/views/orders_list_view.dart';
import 'package:maef/app/modules/orders/views/order_detail_view.dart';
import 'package:maef/app/modules/products/bindings/product_binding.dart';
import 'package:maef/app/modules/products/views/products_list_view.dart';
import 'package:maef/app/modules/products/views/product_detail_view.dart';
import 'package:maef/app/modules/products/views/search_view.dart';
import 'package:maef/app/modules/products/views/category_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    /* GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.PIN_AUTH,
      page: () => const PinAuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.BIOMETRIC_AUTH,
      page: () => const BiometricAuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.STORIES,
      page: () => const StoriesView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => const CheckoutView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.ORDERS,
      page: () => const OrdersListView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DETAIL,
      page: () => const OrderDetailView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => const ProductsListView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAIL,
      page: () => const ProductDetailView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => const CategoryView(),
      binding: ProductBinding(),
    ), */
  ];
}
