import 'package:flutter/material.dart';


import '../../../../core/constants/Constants.dart';
import '../../../../core/styles/TextStyles.dart';
import '../../../../core/utils/Main_Widgets/custom_button.dart';
import '../../../SignUp_Feature/presentation/view/SignUp_Feature.dart';
import '../../../login_feature/presentation/view/login_view.dart';
import 'widgets/login_with_external_widget.dart';

class LandingScreenFeature extends StatelessWidget {
   const LandingScreenFeature({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*1,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/LoginOrSignUp.jpg',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const Row(),
              const Spacer(
                flex: 1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButtonWidget(
                buttonColor: const Color.fromRGBO(35, 31, 32, 1),
                buttonTitle: 'Login',
                buttonWidth: MediaQuery.of(context).size.width * 0.8,
                textColor: AppConstants.kPrimaryColor,
                buttonFunction: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));}
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButtonWidget(
                  buttonColor: AppConstants.kPrimaryColor,
                  buttonTitle: 'SignUp',
                  buttonWidth: MediaQuery.of(context).size.width * 0.8,
                  textColor: const Color.fromRGBO(35, 31, 32, 1,),
              buttonFunction: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpFeature(),));


    },

    ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'OR YOU CAN',
                style: TextStyles.headline3_text_style,
              ),
              const SizedBox(
                height: 30,
              ),
              const LoginWithWidget(
                  buttonText: 'Continue with Gmail',
                  buttonIcon: 'assets/images/google.png'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: LoginWithWidget(
                    buttonText: 'Continue with Apple',
                    buttonIcon: 'assets/images/apple.png'),
              ),
              const LoginWithWidget(
                  buttonText: 'Continue with Facebook',
                  buttonIcon: 'assets/images/facebook.png'),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
