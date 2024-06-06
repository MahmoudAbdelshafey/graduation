import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/core/utils/Main_Widgets/browse_animation.dart';

import '../../../../../../widget/custom_baby_container.dart';

class BabyFound extends StatelessWidget {
  const BabyFound({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: CustomScrollView(
  slivers: [
    BrowseAnimation(title: 'My Baby'),
    SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBabyContainer(),
        ],
      ),
    ),
  ],
),
    );
  }
}
