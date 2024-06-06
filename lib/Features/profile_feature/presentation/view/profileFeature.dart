import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/Features/Login_Feature/presentation/view/login_view.dart';
import 'package:helwan_graduation_project/Features/edit_Profile_Feature/presentation/view/edit_Profile_Feature.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';
import '../../../../core/utils/Cubits/global_cubit/global_cubit.dart';
import '../../../../core/utils/Main_Widgets/browse_animation.dart';

import '../../../change_language_Feature/presentation/view/Change_Language_Feature.dart';
import '../../../change_password_feature/presentation/view/Change_Password_Feature.dart';
import 'widgets/custom_Profile_Settings_widget.dart';
import 'widgets/custom_male_or_female_image.dart';

class ProfileFeature extends StatelessWidget {
  const ProfileFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const BrowseAnimation(
            title: 'Profile',
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                const CustomMaleOrFemaleImage(
                  accountName: 'Mahmoud Abdelshafey',
                  isMale: false,
                ),
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.5,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomProfileSettingsWidget(
                        customText: 'Edit Profile',
                        rowIcon: Icons.edit,
                        iconBackgroundColor: Colors.lightBlue,
                        buttonFunction: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_Profile_Feature(),));
                          // getx.Get.to(
                          //         () => Edit_Profile_Feature(),
                          //     transition: getx.Transition.rightToLeftWithFade,
                          //     duration: const Duration(milliseconds: 600));
                        },
                        hasSwitch: false,
                      ),
                      CustomProfileSettingsWidget(
                        iconBackgroundColor: Colors.lightBlue,

                        customText: 'Change Password',
                        rowIcon: Icons.lock,
                        buttonFunction: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordFeature(),));

                          // getx.Get.to(
                          //         () => const ChangePasswordFeature(),
                          //     transition: getx.Transition.rightToLeftWithFade,
                          //     duration: const Duration(milliseconds: 600));
                        },
                        hasSwitch: false,
                      ),
                      CustomProfileSettingsWidget(
                        iconBackgroundColor: Colors.lightBlue,

                        customText: 'Languages',
                        rowIcon: Icons.language,
                        buttonFunction: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeLanguageFeature(),));

                          // getx.Get.to(
                          //         () => const ChangeLanguageFeature(),
                          //     transition: getx.Transition.rightToLeftWithFade,
                          //     duration: const Duration(milliseconds: 600));
                        },
                        hasSwitch: false,
                      ),
                      CustomProfileSettingsWidget(
                        iconBackgroundColor: Colors.lightBlue,




                        customText: 'themes',
                        rowIcon: Icons.sunny,
                        buttonFunction: () {

                        },
                        hasSwitch: true,
                      ),
                      CustomProfileSettingsWidget(
                        iconBackgroundColor: Colors.lightBlue,

                        customText: 'Help',
                        rowIcon: Icons.help,
                        buttonFunction: () {},
                        hasSwitch: false,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));

                        },
                        child: CustomProfileSettingsWidget(
                          customText: 'Log OUt',
                          rowIcon: Icons.logout,
                          buttonFunction: () {
                          },
                          hasSwitch: false,
                          iconColor: Colors.white,
                          hasPostfix: false,
                          iconBackgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
        ],
      ),
    );
  }
}
