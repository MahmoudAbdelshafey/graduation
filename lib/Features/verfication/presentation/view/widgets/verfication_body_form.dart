import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/Features/verfication/presentation/view/widgets/pin_form.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';

import '../../../../../core/styles/TextStyles.dart';
import '../../../../../core/utils/Main_Widgets/custom_button.dart';

import '../../../../Reset_Password_Feature/presentation/view/Reset_Password_Feature.dart';
import 'Resend.dart';

class VerficationForm extends StatelessWidget {
   VerficationForm({super.key});

  final formkey = GlobalKey<FormState>();


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
                      height: 50,
                    ),

                    const Text(
                      'Get your code',
                      style: TextStyles.headline1_text_style,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'please enter the 4 digit code\n that sent to your Phone Number',
                      style: TextStyles.headline3_text_style,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                     PinForm(),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'didn’t receive code ? ',
                          style: TextStyles.headline3_text_style,
                        ),
                        ResendButtonWithTimer(
                          onPressed: () {
                            print(
                                '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ Clicked');
                            print('test');
                          },

                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonWidget(
                        buttonColor: AppConstants.kPrimaryColor,
                        buttonTitle: 'Verify',
                        buttonWidth: MediaQuery.of(context).size.width * 0.4,
                        textColor: AppConstants.kSecondryColor,
                        buttonFunction: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>ResetPasswordView() ,));
                          // BlocProvider.of<AuthCubit>(context).navigateToResetPassword();
                        }),
                  ],
                )),
          ),

    );

  }
}