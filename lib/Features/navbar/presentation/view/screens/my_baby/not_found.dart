import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../../core/constants/Constants.dart';
import '../../../../../../core/utils/Main_Widgets/browse_animation.dart';
import '../../../../../../core/utils/Main_Widgets/custom_button.dart';
import 'add_baby.dart';

class BabyNotFound extends StatelessWidget {
  const BabyNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        BrowseAnimation(title: 'My Baby'),
        SliverToBoxAdapter(
            child: Column(

              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                LottieBuilder.asset('assets/animation/crying.json'),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text('You Didn\'t Add any Baby, Make Sure You didn\'t forget to add them', textAlign: TextAlign.center,style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),)),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),

                CustomButtonWidget(buttonColor: AppConstants.kPrimaryColor, buttonTitle: 'Add Baby', buttonWidth: MediaQuery.of(context).size.width*0.8, textColor: Colors.white, buttonFunction: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddBaby(),));
                })
              ],
            )
        )
      ],
    );
  }
}
