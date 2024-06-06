import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';

import '../../../../../core/styles/TextStyles.dart';


class CustomLangItem extends StatelessWidget {
  const CustomLangItem({super.key,required this.langSelected, required this.language});
final String language;
final bool langSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width *1,
      decoration: langSelected?BoxDecoration(
        color: AppConstants.kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ) :BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppConstants.kSecondryColor, width: 2)
      ),
      child: Row(
        children: [
          langSelected? const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.radio_button_checked,color: Colors.white,),
          ):  Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.radio_button_off, color: AppConstants.kSecondryColor,),
          ),
          Text(language,style: TextStyles.medium_text_style.copyWith(fontSize: 18, color: const Color.fromRGBO(35, 31, 32, 1)),),
        ],
      ),
    );
  }
}
