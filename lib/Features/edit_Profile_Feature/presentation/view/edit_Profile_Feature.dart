import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';

import '../../../../core/styles/TextStyles.dart';
import '../../../../core/utils/Cubits/global_cubit/global_cubit.dart';
import '../../../../core/utils/Main_Widgets/custom_button.dart';
import '../../../../core/utils/Main_Widgets/custom_text_form_field.dart';
import '../../../Forget_Password_Feature/presentation/view/widgets/Phone_Text_Field.dart';

class Edit_Profile_Feature extends StatelessWidget {
  Edit_Profile_Feature({super.key});

  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email_Name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/resetBack.png'), fit: BoxFit.cover),
          color: Colors.white),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          title: Text(
            'Edit Profile',
            style: TextStyles.headline1_text_style.copyWith(fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [


                Spacer(
                  flex: 1,
                ),
                Text(
                  'edit your profile data',
                  style: TextStyles.medium_text_style.copyWith(fontSize: 20),
                ),
                Spacer(),
                CustomTextFormField(
                  labelText: 'First Name',
                  MyController: firstName,
                  preIcon: Icons.person,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: 'Last Name',
                  MyController: lastName,
                  preIcon: Icons.person,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  labelText: 'Email',
                  MyController: email_Name,
                  preIcon: Icons.email,
                ),
                SizedBox(
                  height: 20,
                ),
                PhoneTextFormField(
                  itemColor: AppConstants.kPrimaryColor,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButtonWidget(
                    buttonColor: AppConstants.kPrimaryColor,
                    buttonTitle: 'Submit',
                    buttonWidth: MediaQuery.of(context).size.width * 0.9,
                    textColor: AppConstants.kSecondryColor,
                    buttonFunction: () {}),
                Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

