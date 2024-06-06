import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/Features/login_feature/presentation/view/widgets/login_form.dart';
import 'package:helwan_graduation_project/core/constants/constants.dart';
import '../../../../core/utils/Main_Widgets/auth_top_design.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            child:AuthTopWidget(designTitle: 'Login') ,
          ),
          LoginForm(),
          
        ],
        
      ),
    );
  }
}
