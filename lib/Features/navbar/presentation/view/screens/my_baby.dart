import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/Features/navbar/presentation/view/screens/my_baby/found.dart';


import 'my_baby/not_found.dart';

class MyBaby extends StatelessWidget {
   MyBaby({super.key});
bool babyFound = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: babyFound? BabyFound(): BabyNotFound()
    );
  }
}
