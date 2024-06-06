import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';


class PhoneTextFormField extends StatefulWidget {
   PhoneTextFormField({super.key,required this.itemColor});
  final Color itemColor;

  @override
  State<PhoneTextFormField> createState() => _PhoneTextFormFieldState();
}

class _PhoneTextFormFieldState extends State<PhoneTextFormField> {
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return               InternationalPhoneNumberInput(
      cursorColor: AppConstants.kPrimaryColor,
      inputDecoration: InputDecoration(
          focusColor:  AppConstants.kPrimaryColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: widget.itemColor)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:  BorderSide(color:  AppConstants.kPrimaryColor,width: 2)
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:  BorderSide(color:  AppConstants.kPrimaryColor)
          )
      ),
      onInputChanged: (PhoneNumber numberNow) {
       number = numberNow;
      },
      onInputValidated: (bool value) {
        print('value validated and it is $value');
      },
      selectorConfig: const SelectorConfig(

        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        useBottomSheetSafeArea: true,
        setSelectorButtonAsPrefixIcon: true,
        leadingPadding: 20,
        trailingSpace: true,
      ),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: const TextStyle(color: Colors.black),
      initialValue: number,
      textFieldController: phoneController,
      formatInput: true,


      keyboardType:
      const   TextInputType.numberWithOptions(signed: true, decimal: true),

      errorMessage: 'Please Enter Valid Number',

    )
    ;
  }
}
