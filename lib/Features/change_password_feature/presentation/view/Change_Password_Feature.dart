import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';


import '../../../../core/styles/TextStyles.dart';
import '../../../../core/utils/Main_Widgets/custom_button.dart';
import '../../../../core/utils/Main_Widgets/custom_text_form_field.dart';

class ChangePasswordFeature extends StatelessWidget {
  const ChangePasswordFeature({super.key});
  // final TextEditingController lastPassword = TextEditingController();
  // final TextEditingController newPassword = TextEditingController();
  // final TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final TextEditingController confirmPassword = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/resetBack.png'),fit: BoxFit.cover),
        color: Colors.white
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: (){
            Navigator.pop(context);
          },),
          elevation: 0,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,

          title:  Text('Change Password', style:  TextStyles.headline1_text_style.copyWith(fontSize: 30),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height *0.8,
            padding: const EdgeInsets.symmetric(horizontal: 16),

            child: Column(
              children: [
               const Spacer(flex: 1,),
                Text('Enter New Password', style:  TextStyles.headline1_text_style.copyWith(fontSize: 20),),
              const  SizedBox(height: 10,),

                SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text('your password must be different from your last password', style:  TextStyles.headline3_text_style.copyWith(fontSize: 16),textAlign: TextAlign.center,)),
                const  SizedBox(height: 50,),

                 CustomTextFormField(labelText: 'Current Password', preIcon: Icons.lock,isPassword: true, MyController: confirmPassword,suffexIcon: Icons.remove_red_eye,),
              const  SizedBox(height: 20,),
                 CustomTextFormField(labelText: 'New Password', preIcon: Icons.lock,isPassword: true,suffexIcon: Icons.remove_red_eye, MyController: confirmPassword,),
              const  SizedBox(height: 20,),

                CustomTextFormField(labelText: 'Confirm Password',preIcon: Icons.lock,isPassword: true, MyController: confirmPassword,suffexIcon: Icons.remove_red_eye,),
              const  SizedBox(height: 20,),


                CustomButtonWidget(buttonColor: AppConstants.kPrimaryColor,
                    buttonTitle: 'Create New Password', buttonWidth: MediaQuery.of(context).size.width*0.9, textColor: Colors.black, buttonFunction: (){
                    }),
              const  Spacer(flex: 4,),


              ],
            ),
          ),
        ),

      ),
    );
  }
}
