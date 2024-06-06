import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';

import '../../../../../core/styles/TextStyles.dart';


class CustomProfileSettingsWidget extends StatefulWidget {
  const CustomProfileSettingsWidget(
      {super.key,
      required this.customText,
      required this.rowIcon,
      required this.buttonFunction,
      required this.hasSwitch,
      this.hasPostfix = true,
     required this.iconBackgroundColor ,
      this.iconColor = Colors.black});

  final String customText;
  final IconData rowIcon;
  final VoidCallback buttonFunction;
  final bool hasSwitch;
  final bool hasPostfix;
  final Color iconBackgroundColor;
  final Color iconColor;

  @override
  State<CustomProfileSettingsWidget> createState() => _CustomProfileSettingsWidgetState();
}

class _CustomProfileSettingsWidgetState extends State<CustomProfileSettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(247, 247, 247, 1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: widget.iconBackgroundColor),
            child: Icon(widget.rowIcon, color: widget.iconColor,),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.customText,
            style: TextStyles.medium_text_style.copyWith(fontSize: 18),
          ),
          const Spacer(),
          Visibility(
            visible: !widget.hasSwitch && widget.hasPostfix,
            child: GestureDetector(
                onTap: widget.buttonFunction,
                child: const  Icon(Icons.arrow_forward_ios_rounded,)),
          ),
          Visibility(
            visible: widget.hasSwitch && widget.hasPostfix,
            child: Switch(
              value:true,
              onChanged: (value) {

              },
              activeColor: AppConstants.kPrimaryColor,
              thumbColor: const MaterialStatePropertyAll(Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
