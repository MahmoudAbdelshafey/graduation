import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';

import '../../../../../core/styles/TextStyles.dart';
import '../../../../../core/utils/Cubits/global_cubit/global_cubit.dart';
import '../../../../../core/utils/Main_Widgets/custom_button.dart';
import '../../../../verfication/presentation/view/VerficationView.dart';
import 'Phone_Text_Field.dart';

class ForgetForm extends StatelessWidget {
  ForgetForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: Form(
        key: formKey,
        child: SliverList(
            delegate: SliverChildListDelegate(
          [
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'get your code',
                  style: TextStyles.headline1_text_style,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'enter your number to get otp',
                  style: TextStyles.headline3_text_style,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            PhoneTextFormField(
              itemColor: AppConstants.kSecondryColor,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButtonWidget(
                buttonColor: AppConstants.kPrimaryColor,
                buttonTitle: 'send',
                buttonWidth: MediaQuery.of(context).size.width * 0.4,
                textColor: AppConstants.kSecondryColor,
                buttonFunction: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VerficationFeature(),));
                }),
          ],
        )),
      ),
    );
  }
}
