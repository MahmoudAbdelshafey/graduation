import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';


import '../../../../../core/styles/TextStyles.dart';
import '../../../../../core/utils/Main_Widgets/custom_button.dart';
import '../../../../../core/utils/Main_Widgets/custom_text_form_field.dart';
import '../../../../Login_Feature/presentation/view/login_view.dart';

class ResetForm extends StatelessWidget {
   ResetForm({super.key});

  final formkey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: Form(
            key: formkey,
            child: SliverList(
                delegate: SliverChildListDelegate(
              [

                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'your password must be different\n from your last password',
                  style: TextStyles.headline3_text_style,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextFormField(
                  labelText: 'Password',
                  hintText: '********',
                  isPassword: true,
                  preIcon: Icons.lock,
                  MyController: password,
                  suffexIcon: Icons.remove_red_eye,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: 'Confirm Password',
                  hintText: '********',
                  isPassword: true,
                  preIcon: Icons.lock,
                  MyController: confirm_password,

                  suffexIcon: Icons.remove_red_eye,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonWidget(
                  buttonFunction: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),));
                  },
                  textColor: AppConstants.kSecondryColor,
                  buttonColor: AppConstants.kPrimaryColor,
                  buttonTitle: 'Continue',
                  buttonWidth: MediaQuery.of(context).size.width * 0.4,
                ),

              ],
            )),
          ),

    );
  }
}
