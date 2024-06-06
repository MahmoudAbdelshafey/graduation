import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/core/utils/Main_Widgets/browse_animation.dart';
import 'package:helwan_graduation_project/core/utils/Main_Widgets/custom_text_form_field.dart';

import '../../../../../../core/constants/Constants.dart';
import '../../../../../../core/styles/TextStyles.dart';
import '../../../../../../core/utils/Main_Widgets/custom_button.dart';
import '../../../../../../core/utils/Main_Widgets/time.dart';
import '../../../../../Forget_Password_Feature/presentation/view/Forget_Password_View.dart';
import '../../../../../SignUp_Feature/presentation/view/SignUp_Feature.dart';
import '../../nav_bar_widget.dart';

class AddBaby extends StatelessWidget {
   AddBaby({super.key});
TextEditingController babyName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(slivers: [
        BrowseAnimation(title: 'Add Baby', hasLeadingIcon: true,),
        SliverToBoxAdapter(
          child: SizedBox(height: 20,),
        ),

        SliverList(
            delegate: SliverChildListDelegate([

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomTextFormField(labelText: 'Baby Name', MyController: babyName),
              ),
              SizedBox(height: 20,),
              Row(

                children: [
                  SizedBox(width: 30,),
                  Text('Birth Date',style: TextStyles.text_form_style.copyWith(fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 10,),

            ],
            ),

        ),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppConstants.kPrimaryColor),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: DatePickerExample()),
              ),
            ],
          ),
        )     ,



      ],),
    );
  }
}
