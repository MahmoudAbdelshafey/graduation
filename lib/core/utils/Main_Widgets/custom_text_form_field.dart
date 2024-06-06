import 'package:flutter/material.dart';

import '../../constants/Constants.dart';



class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key,  this.hintText,  this.isPassword = false,  this.preIcon,  this.suffexIcon, required this.labelText, required this.MyController});
  final String? hintText;
  final String labelText;
  final IconData? preIcon;
  final IconData? suffexIcon;
  final bool isPassword;
  final TextEditingController MyController;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();

}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool PasswordShown = false;
  FocusNode _focus = FocusNode();
  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    setState(() {

    });  }

  @override
  Widget build(BuildContext context) {

    return   Material(
      elevation: _focus.hasFocus? 10:0,
      borderRadius: BorderRadius.circular(10),
      shadowColor: Colors.grey.withOpacity(0.6),

      child: TextFormField(
          focusNode: _focus,

          controller:widget.MyController ,
          validator: (data){
            if(data!.trim().isEmpty || data == null ||data ==''){
              return 'This Field is Required';
            }

          },
          obscureText: widget.isPassword &&!PasswordShown,
          cursorColor: AppConstants.kPrimaryColor,
          decoration: InputDecoration(
            fillColor: Colors.white,
              filled: true,
              enabledBorder:  OutlineInputBorder(
                  borderSide:  BorderSide(color: AppConstants.kPrimaryColor),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                  borderSide:  BorderSide(color: AppConstants.kPrimaryColor)),
              disabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                  borderSide:  BorderSide(color: AppConstants.kPrimaryColor)),
              hintText: widget.hintText,
              label:   Text(
                widget.labelText,
              ),

              prefixIcon: GestureDetector(
                child: Container
                  (
                    child:  Icon(
                      widget.preIcon,
                      size: 26,
                      color: Colors.black,
                    )),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              suffixIcon: Visibility(
                visible: widget.isPassword,
                child: Container(
                    margin: const EdgeInsets.only(right: 10, ),
                    child:  IconButton(
                      icon: Icon(
                        widget.isPassword &&!PasswordShown ? widget.suffexIcon : Icons.visibility_off,
                        size: 28,
                        color: Colors.black,
                      ),
                      onPressed: (){
                        PasswordShown = !PasswordShown;
                        setState(() {

                        });
                      },

                    )),
              ))),

    );
  }
}