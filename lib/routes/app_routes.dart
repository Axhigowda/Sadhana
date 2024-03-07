import 'package:flutter/material.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/splash_zero_screen/splash_zero_screen.dart';
import '../presentation/splash_one_screen/splash_one_screen.dart';
import '../presentation/data_screen/data_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registerScreen = '/register_screen';

  static const String loginScreen = '/login_screen';

  static const String homeScreen = '/home_screen';

  static const String splashZeroScreen = '/splash_zero_screen';

  static const String splashOneScreen = '/splash_one_screen';

  static const String dataScreen = '/data_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        registerScreen: RegisterScreen.builder,
        loginScreen: LoginScreen.builder,
        homeScreen: HomeScreen.builder,
        splashZeroScreen: SplashZeroScreen.builder,
        splashOneScreen: SplashOneScreen.builder,
        dataScreen: DataScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashZeroScreen.builder
      };
}
