import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/Features/change_language_Feature/presentation/view/widgets/Custom_Lang_Item.dart';

import '../../../../core/styles/TextStyles.dart';
import '../../../../core/utils/Main_Widgets/browse_animation.dart';

class ChangeLanguageFeature extends StatefulWidget {
 const ChangeLanguageFeature({super.key});

  @override
  State<ChangeLanguageFeature> createState() => _Change_Language_FeatureState();
}

class _Change_Language_FeatureState extends State<ChangeLanguageFeature> {
  bool engLishLanguage = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/resetBack.png'),fit: BoxFit.cover),
              ),
        child: CustomScrollView(
          slivers: [
          const  BrowseAnimation(
              title: 'Language',
              withBack: false,
              hasLeadingIcon: true,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('choose your language', style:  TextStyles.headline1_text_style.copyWith(fontSize: 20),),
                          ],
                        ),
                      const  SizedBox(height: 30,),
                        GestureDetector(
                            onTap: (){
                              if(engLishLanguage){
                                engLishLanguage = !engLishLanguage;
                                setState(() {

                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: CustomLangItem(langSelected: !engLishLanguage,language: 'Arabic',),
                            )),
                      const  SizedBox(height: 20,),
                        GestureDetector(
                            onTap: (){
                              if(!engLishLanguage){
                                engLishLanguage = !engLishLanguage;
                                setState(() {

                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: CustomLangItem(langSelected: engLishLanguage,language: 'English',),
                            )),


            ]))


          ],
        ),
      ),
    );

  }
}
