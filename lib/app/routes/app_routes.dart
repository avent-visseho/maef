part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const ONBOARDING = _Paths.ONBOARDING;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const HOME = _Paths.HOME;
  static const PROFILE = _Paths.PROFILE;
  static const CART = _Paths.CART;
  static const CHECKOUT = _Paths.CHECKOUT;
  static const ORDERS = _Paths.ORDERS;
  static const ORDER_DETAIL = _Paths.ORDER_DETAIL;
  static const PRODUCTS = _Paths.PRODUCTS;
  static const PRODUCT_DETAIL = _Paths.PRODUCT_DETAIL;
  static const SEARCH = _Paths.SEARCH;
  static const CATEGORY = _Paths.CATEGORY;
  static const PIN_AUTH = _Paths.PIN_AUTH;
  static const BIOMETRIC_AUTH = _Paths.BIOMETRIC_AUTH;
  static const FORGOT_PASSWORD = _Paths.FORGOT_PASSWORD;
  static const EDIT_PROFILE = _Paths.EDIT_PROFILE;
  static const SETTINGS = _Paths.SETTINGS;
  static const STORIES = _Paths.STORIES;
}

abstract class _Paths {
  _Paths._();

  static const SPLASH = '/splash';
  static const ONBOARDING = '/onboarding';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const HOME = '/home';
  static const PROFILE = '/profile';
  static const CART = '/cart';
  static const CHECKOUT = '/checkout';
  static const ORDERS = '/orders';
  static const ORDER_DETAIL = '/order-detail';
  static const PRODUCTS = '/products';
  static const PRODUCT_DETAIL = '/product-detail';
  static const SEARCH = '/search';
  static const CATEGORY = '/category';
  static const PIN_AUTH = '/pin-auth';
  static const BIOMETRIC_AUTH = '/biometric-auth';
  static const FORGOT_PASSWORD = '/forgot-password';
  static const EDIT_PROFILE = '/edit-profile';
  static const SETTINGS = '/settings';
  static const STORIES = '/stories';
}
