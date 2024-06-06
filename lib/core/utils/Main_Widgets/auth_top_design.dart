import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';

class AuthTopWidget extends StatelessWidget {
  const AuthTopWidget({super.key,required this.designTitle});
final String designTitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration:const  BoxDecoration(
                color: AppConstants.kPrimaryColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(120))
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            height: 190,
            width: double.infinity,
            decoration: const  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(120))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8),
              child: Text(designTitle, style: const  TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),),
            ),
          ),
          Container(
            height: 140,
            decoration: const BoxDecoration(
                color: AppConstants.kPrimaryColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(120))
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(120))
            ),

          ),
          Container(
            height: 123,
            decoration:const BoxDecoration(
                color: AppConstants.kPrimaryColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(120))
            ),
          ),

        ],
      ),
    );
  }
}
