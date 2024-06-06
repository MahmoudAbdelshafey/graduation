import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/core/constants/constants.dart';


class BrowseAnimation extends StatelessWidget {
  const BrowseAnimation({super.key, required this.title , this.withBack = true, this.hasLeadingIcon = false});
  final String title;
  final bool withBack;
  final bool hasLeadingIcon;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 50,
      floating: false,

      backgroundColor: Colors.transparent,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(),
          Visibility(
              visible: hasLeadingIcon,
              child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                  child:Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.only(left: 8),

                      child: const  Icon(Icons.arrow_back_ios)))),
          const  Spacer(flex: 4,)
        ],
      ),


      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,

        background: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(

              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 1.0, end: 0.0),
                duration: const Duration(milliseconds: 500),
                builder: (BuildContext context, double value,
                    Widget? child) {
                  return Transform.scale(
                    alignment: AlignmentDirectional.centerEnd,

                    scale: 1 + value,
                    child: Opacity(
                      opacity:
                      1 - value,
                      child: Text(
                        title,


                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
