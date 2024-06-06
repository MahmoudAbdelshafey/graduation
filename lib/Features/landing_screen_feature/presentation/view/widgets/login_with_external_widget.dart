import 'package:flutter/material.dart';

import '../../../../../core/styles/TextStyles.dart';

class LoginWithWidget extends StatelessWidget {
  const LoginWithWidget({super.key, required this.buttonText, required this.buttonIcon});

  final String buttonText;
  final String buttonIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(buttonText);
      },
      child: Container(
        width: MediaQuery.of(context).size.width*0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black,width: 1)
        ),
        child:  Padding(
          padding:  const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(AssetImage(buttonIcon), color: Colors.black,),
              const SizedBox(width: 7,),
              Text(buttonText, style: TextStyles.regular_text_style,),
            ],
          ),
        ),
      ),
    );
  }
}
