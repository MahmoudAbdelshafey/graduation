import 'package:flutter/material.dart';
import '../../../../../core/styles/TextStyles.dart';

class CustomMaleOrFemaleImage extends StatelessWidget {
  const CustomMaleOrFemaleImage({super.key, required this.isMale, required this.accountName});
  final String accountName;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.4,
      height: MediaQuery.of(context).size.height *0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.4,
            height: MediaQuery.of(context).size.height *0.2,
            decoration:  BoxDecoration(
              image: isMale? const DecorationImage(image: AssetImage('assets/images/maleProfileImage.png')) : const DecorationImage(image:  AssetImage('assets/images/maleProfileImage.png')),
            ),
          ),
          Text(accountName, style: TextStyles.headline1_text_style.copyWith(fontSize: 25),)
        ],
      ),
    );
  }
}
