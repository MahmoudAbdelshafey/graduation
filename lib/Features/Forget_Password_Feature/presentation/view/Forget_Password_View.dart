import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';

import '../../../../core/utils/Main_Widgets/auth_top_design.dart';
import 'widgets/ForgetForm.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: CustomScrollView(
    slivers: [

    SliverAppBar(
    backgroundColor: AppConstants.kPrimaryColor,
    elevation: 0,
    leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios),
    onPressed: () {
    Navigator.pop(context);
    },
    ),
    ),
    const SliverToBoxAdapter(
    child:AuthTopWidget(designTitle: 'Forget Password') ,
    ),
      ForgetForm(),

    ],

    ),
    );
  }}
