import 'package:flutter/material.dart';

class TextStyles{

  static const TextStyle bold_text_style = TextStyle(
    fontFamily: 'Roboto',

  );
  static const TextStyle medium_text_style = TextStyle(
    fontFamily: 'Roboto_Med',

  );
  static const TextStyle regular_text_style = TextStyle(
    fontFamily: 'Roboto_reg',

  );

  // here is the app textStyles
  static const TextStyle button_text_style = TextStyle(
    fontFamily: 'Roboto_Med',
    fontSize: 20
  );
  static const TextStyle headline3_text_style = TextStyle(
    fontFamily: 'Roboto_Med',
    fontSize: 14,
    color: Colors.black
  );
  static const TextStyle headline1_text_style = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 22,
    color: Colors.black
  );
  static const TextStyle text_form_style = TextStyle(
      fontFamily: 'Roboto_Med',
      fontSize: 16,
    // fontWeight: FontWeight.w200,
    color: Color.fromRGBO(35, 31, 32, 0.8),
  );
}