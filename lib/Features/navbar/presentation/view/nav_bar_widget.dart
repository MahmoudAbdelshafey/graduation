import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:helwan_graduation_project/Features/navbar/presentation/view/screens/ai/memo_screen.dart';
import 'package:helwan_graduation_project/core/constants/Constants.dart';

import '../../../profile_feature/presentation/view/profileFeature.dart';
import 'screens/home_screen/src/pages/home_page.dart';
import 'screens/my_baby.dart';
import 'screens/memos_screen.dart';
import 'screens/my_profile.dart';
import 'screens/blog.dart';
import 'widgets/tab_bar.dart';


class MyHomePages extends StatefulWidget {
 const MyHomePages({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePages> with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;
  @override
  void initState() {
    currentPage =0;
    tabController = TabController(length: 5, vsync: this,initialIndex: 0);
    tabController.animation!.addListener(
          () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(

        fit: StackFit.expand,
        borderRadius: BorderRadius.circular(500),
        duration:const  Duration(seconds: 1),
        curve: Curves.decelerate,
        showIcon: true,
        width: MediaQuery.of(context).size.width * 0.8,
        barColor: Colors.white,

        offset: 10,
        barAlignment: Alignment.bottomCenter,
        iconHeight: 35,
        iconWidth: 35,
        reverse: false,
        hideOnScroll: true,
        scrollOpposite: false,
        onBottomBarHidden: () {},
        onBottomBarShown: () {},
        body: (context, controller) => TabBarView(
          controller: tabController,
          dragStartBehavior: DragStartBehavior.down,
          physics: const BouncingScrollPhysics(),
          children:  [
            HomePage(),
            Blog(),
            MyBaby(),
            MemoScree(),
            ProfileFeature(),
          ],

        ),
        child:  TabBar(
          indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
          controller: tabController,
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                  color:  AppConstants.kPrimaryColor,
                  width: 4),
              insets: EdgeInsets.fromLTRB(16, 0, 16, 8)),
          tabs: [
            TabBarIcon(selectedIcon: Icons.home,unselectedIcon: Icons.home_outlined,iconSelected: currentPage == 0,),
            TabBarIcon(selectedIcon: Icons.article,unselectedIcon: Icons.article_outlined,iconSelected: currentPage == 1,),
            TabBarIcon(selectedIcon: Icons.add_circle,unselectedIcon: Icons.add_circle,iconSelected: currentPage == 2,addIcon: true,),
            TabBarIcon(selectedIcon: Icons.assignment_ind,unselectedIcon: Icons.assignment_ind_outlined,iconSelected: currentPage == 3,),
            TabBarIcon(selectedIcon: Icons.person,unselectedIcon: Icons.person_2_outlined,iconSelected: currentPage == 4,),
          ],
        ),
      ),
    );
  }
}