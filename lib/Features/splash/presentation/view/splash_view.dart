import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/Features/landing/presentation/view/landing_view.dart';

import '../../../../logic/cubit/theme_cubit.dart';
import '../../../landing_screen_feature/presentation/view/landing_screen_feature.dart';
import '../../../onboarding/presentation/view/onboarding_page.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 7000),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => BlocProvider.of<ThemeCubit>(context).onboarding? const LandingScreenFeature() :  OnboardingPage(),
            ));
      },
    );
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.pink,
          width: double.infinity,
          height: double.infinity,
        ),
        FlutterSplashScreen.gif(
          backgroundColor: Colors.white,
          gifPath: 'assets/gif/logo animation.gif',
          gifWidth: 300,
          gifHeight: 300,
        ),
      ],
    ));
  }
}
