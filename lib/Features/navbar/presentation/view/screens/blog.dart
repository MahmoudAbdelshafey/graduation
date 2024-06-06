import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/core/utils/Main_Widgets/browse_animation.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          BrowseAnimation(title: 'Blog'),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.2,

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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                  width: 150,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(image: NetworkImage('https://elnadahospital.com/wp-content/uploads/2023/10/lab.jpg'), fit: BoxFit.fitHeight)
                          ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Text('Laboratory', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                          Container(
                            width: 130,
                            child: Text('An exceptional clinical expertise in the laboratory of El Nada Hospital. It works around the clock providing a', style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                            ),),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
