import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';


import '../../../../core/utils/Main_Widgets/auth_top_design.dart';
import 'widgets/verfication_body_form.dart';

class VerficationFeature extends StatelessWidget {
  const VerficationFeature({super.key});

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
            child: AuthTopWidget(designTitle: 'Verfication'),
          ),

           VerficationForm()
        ],
      ),
    );
  }
}
