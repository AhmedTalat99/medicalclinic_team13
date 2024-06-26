import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_clinic_team13/features/login/ui/screen/login_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/login/logic/login_state.dart';
import '../theming/consts/app_strings.dart';

abstract class AppRouter {
  static const kSplash = '/';

  static const kOnboarding1View = '/onboarding1';
  static const kOnboarding2View = '/onboarding2';
  static const kOnboarding3View = '/onboarding3';

  static const kHomeUser = '/home';

  static const kForgetPassword = '/forgetPassword';
  static const kResetPassword = '/Reset Password';

  static const kLogin = '/login';
  static const ksignup = '/signup';

  static const kProfile = '/profile';
  static const kProfileDetails = '/profile Details';

  static Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(); //replace this Scaffold with a Splash Screen
        });
      case kLogin :
        return MaterialPageRoute(builder: (context) {
          return const LoginScreen();
        });
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text(AppStrings.notFound),
            ),
          );
        });
    }
  }
}
