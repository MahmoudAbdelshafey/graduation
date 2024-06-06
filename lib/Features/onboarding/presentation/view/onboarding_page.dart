import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/Features/landing/presentation/view/landing_view.dart';
import 'package:lottie/lottie.dart';

import '../../../../widget/card_planet.dart';
import '../../../landing_screen_feature/presentation/view/landing_screen_feature.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "observe",
      subtitle:
          "The night sky has much to offer to those who seek its mystery.",
      image: 'assets/animation/on1.json',
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/bg-1.json"),
    ),
    CardPlanetData(
      title: "imagine",
      subtitle: "An endless number of galaxies means endless possibilities.",
      image: 'assets/animation/on2.json',
      backgroundColor: Colors.white,
      titleColor: Colors.purple,
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      background: LottieBuilder.asset("assets/animation/bg-2.json"),
    ),
    CardPlanetData(
      title: "stargaze",
      subtitle: "The sky dome is a beautiful graveyard of stars.",
      image: 'assets/animation/on3.json',
      backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
      titleColor: Colors.yellow,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/bg-3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (index) {
          return CardPlanet(data: data[index]);

        },



        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LandingScreenFeature()),
          );
        },
      ),
    );
  }
}
