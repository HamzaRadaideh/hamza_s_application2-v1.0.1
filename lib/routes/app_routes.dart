
import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/create_new_password_page_screen/create_new_password_page_screen.dart';
import '../presentation/forgot_password_page_screen/forgot_password_page_screen.dart';
import '../presentation/login_page_screen/login_page_screen.dart';
import '../presentation/sign_up_page_screen/sign_up_page_screen.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String forgotPasswordPageScreen = '/forgot_password_page_screen';

  static const String createNewPasswordPageScreen =
      '/create_new_password_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    loginPageScreen: (context) => LoginPageScreen(),
    signUpPageScreen: (context) => SignUpPageScreen(),
    forgotPasswordPageScreen: (context) => ForgotPasswordPageScreen(),
    createNewPasswordPageScreen: (context) => CreateNewPasswordPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LoginPageScreen()
  };
}
