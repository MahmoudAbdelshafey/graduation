import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/Features/login_feature/presentation/view/login_view.dart';
import 'package:helwan_graduation_project/core/constants/constants.dart';

import '../../../../../core/styles/TextStyles.dart';
import '../../../../../core/utils/Main_Widgets/custom_button.dart';
import '../../../../../core/utils/Main_Widgets/custom_text_form_field.dart';


class SignUpForm extends StatelessWidget {
   SignUpForm({super.key});
TextEditingController cont1 = TextEditingController();
TextEditingController cont2 = TextEditingController();
TextEditingController cont3 = TextEditingController();
TextEditingController cont4 = TextEditingController();
TextEditingController cont5 = TextEditingController();
TextEditingController cont6 = TextEditingController();
   final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: Form(
            key: formkey,
            child: SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: 'First Name',
                  hintText: '',
                  isPassword: false,
                  preIcon: Icons.person,
                  MyController: cont1,

                ),

                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: 'Last Name',
                  hintText: '',
                  isPassword: false,
                  preIcon: Icons.person,
                  MyController: cont2,

                ),

                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: 'e-mail',
                  hintText: '@gmail.com',
                  isPassword: false,
                  preIcon: Icons.email,
                  MyController: cont3,

                ),
                const SizedBox(
                  height: 20,
                ),

                CustomTextFormField(
                  labelText: 'Password',
                  hintText: '********',
                  isPassword: true,
                  preIcon: Icons.lock,
                  MyController: cont4,
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
                  MyController: cont5,
                  suffexIcon: Icons.remove_red_eye,

                ),
                const SizedBox(
                  height: 30,
                ),

                CustomButtonWidget(
                  buttonFunction: () {


                  },
                  textColor: AppConstants.kSecondryColor,
                  buttonColor: AppConstants.kPrimaryColor,
                  buttonTitle: 'SignUp',
                  buttonWidth: MediaQuery.of(context).size.width * 0.4,
                ),
                const SizedBox(
                  height: 20,
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already Have An Account?',
                      style: TextStyles.headline3_text_style,
                    ),
                    GestureDetector(
                      child: const Text(' Login'),
                      onTap: () {

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),));

                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),

              ]),
            ),
          ),
        );

  }
}
