import 'package:beesiha_test/domain/preferences/user_preferences.dart';
import 'package:beesiha_test/gen/assets.gen.dart';
import 'package:beesiha_test/injection/injector.dart';
import 'package:beesiha_test/presentation/resources/app_colors.dart';
import 'package:beesiha_test/presentation/utils/ext1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3),() {
      goTo(injector.get<UserPreferences>().isLogged()?'/main':'/login');
    });
    return WillPopScope(
      onWillPop: onWillPopExit,
      child: Material(
        color: AppColors.kc1,
        child: SafeArea(
          child: Center(
            child: Assets.images.logo.image(width: 120),
          ),
        ),
      ),
    );
  }
}