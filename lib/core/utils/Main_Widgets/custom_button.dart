import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, required this.buttonColor, required this.buttonTitle, required this.buttonWidth, required this.textColor, required this.buttonFunction});
final String buttonTitle;
final Color buttonColor;
final double buttonWidth;
final Color textColor;
final void Function()? buttonFunction;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: buttonFunction,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            width: buttonWidth,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: buttonColor
            ),
            child: Text(buttonTitle,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              ),
          ),
        ),
      ],
    );
  }
}
