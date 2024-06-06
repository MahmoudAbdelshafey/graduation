import 'package:flutter/material.dart';

import '../core/textStyles.dart';
import 'custom_smal_button.dart';



class CustomBabyContainer extends StatelessWidget {
  const CustomBabyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal:  10, vertical: 10),
      width: MediaQuery.of(context).size.width *0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text('First Baby', style: FontStyles.cardHead1,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Youssef Abdo', style: FontStyles.cardHead3,),

                      ],
                    )
                  ], ),
                  SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Gender: ',style: FontStyles.cardHead2,),
                      Text('Male',)
                    ],
                  ),
                  SizedBox(height: 5,),

                  Row(
                    children: [
                      Text('Date of Birth: ',style: FontStyles.cardHead2,),
                      Text('29/5/2001',)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('blood Type: ',style: FontStyles.cardHead2,),
                      Text('No Blood')
                    ],
                  ),

                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  SizedBox(height: 40,),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage('assets/images/maleProfileImage.png'),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                      width: MediaQuery.of(context).size.width *0.3,
                      height: MediaQuery.of(context).size.height*0.05,
                      child: CustomSmalButton(btnFun: (){},btnTitle: 'Details',delete: false,))

                ],
              )
            ],
          ),



        ],
      ),
    );
  }
}
