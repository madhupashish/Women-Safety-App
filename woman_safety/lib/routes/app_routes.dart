import 'package:flutter/material.dart';
import 'package:mayank__mj_s_application1/presentation/login_screen/login_screen.dart';
import 'package:mayank__mj_s_application1/presentation/register_screen/register_screen.dart';
import 'package:mayank__mj_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:mayank__mj_s_application1/presentation/form_screen/form_screen.dart';
import 'package:mayank__mj_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String profilePage = '/profile_page';

  static const String formScreen = '/form_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    formScreen: (context) => FormScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
