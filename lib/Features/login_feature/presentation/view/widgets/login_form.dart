import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/Features/Forget_Password_Feature/presentation/view/Forget_Password_View.dart';
import 'package:helwan_graduation_project/Features/SignUp_Feature/presentation/view/SignUp_Feature.dart';
import 'package:helwan_graduation_project/core/constants/constants.dart';

import '../../../../../core/styles/TextStyles.dart';
import '../../../../../core/utils/Main_Widgets/custom_button.dart';
import '../../../../../core/utils/Main_Widgets/custom_text_form_field.dart';
import '../../../../navbar/presentation/view/nav_bar_widget.dart';

class LoginForm extends StatelessWidget {
    LoginForm({super.key});

   TextEditingController cont5 = TextEditingController();
   TextEditingController cont6 = TextEditingController();
   final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: Form(
        key: formkey,
        child: SliverList(
            delegate: SliverChildListDelegate([
        
           const SizedBox(
             height: 50,
           ),
            CustomTextFormField(
              labelText: 'e-mail',
              hintText: '@gmail.com',
              isPassword: false,
              preIcon: Icons.email,
              MyController: cont5,

            ),
          const SizedBox(
            height: 20,
          ),
            CustomTextFormField(
              labelText: 'Password',
              hintText: '********',
              isPassword: true,
              preIcon: Icons.lock,
              MyController: cont6,
              suffexIcon: Icons.remove_red_eye,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){

                  Navigator.push(context,MaterialPageRoute(builder: (context) => ForgetPasswordView(),));
        
                }, child: Text('forget password?', style: TextStyles.headline3_text_style.copyWith(
                  color: Colors.black.withOpacity(0.8)
                ),))
              ],
            ),
          const SizedBox(
            height: 30,
          ),
        
        
            CustomButtonWidget(
              buttonFunction: (){
                // BlocProvider.of<AuthCubit>(context).loginClicked();
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePages(),));
              },
              textColor: AppConstants.kSecondryColor,
              buttonColor: AppConstants.kPrimaryColor,
              buttonTitle: 'Login',
              buttonWidth: MediaQuery.of(context).size.width*0.4,
            ),
          const SizedBox(
            height: 30,
          ),
        
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const  Text('Don\'t Have An Account?',style: TextStyles.headline3_text_style,),
                GestureDetector(child: const Text(' SignUp'),onTap: () {

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpFeature(),));
                },)
              ],
            ),
        
        ],
        )),
      ),
    );


  }
}
