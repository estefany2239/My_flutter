import 'package:flutter/material.dart';

import '../../features/auth/presentation/pages/login.dart';
import '../../features/auth/presentation/pages/register.dart';
import '../../features/auth/presentation/pages/forgot.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/splash/presentation/pages/splash.dart';

class AppRoutes {
  AppRoutes._();

  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String dashboard = '/dashboard';
  static const String profile = '/profile';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashPage(),
    login: (context) => const LoginPage(),
    register: (context) => const RegisterPage(),
    forgotPassword: (context) => const ForgotPage (),
    dashboard: (context) => const DashboardPage(),
    profile: (context) => const ProfilePage(),
  };
}