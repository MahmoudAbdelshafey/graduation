import 'package:flutter/material.dart';
import 'package:helwan_graduation_project/Features/navbar/presentation/view/screens/home_screen/src/theme/extention.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import '../model/dactor_model.dart';
import '../theme/light_color.dart';
import '../theme/text_styles.dart';
import '../theme/theme.dart';
import '../widgets/progress_widget.dart';
import '../widgets/rating_start.dart';


class DetailPage extends StatefulWidget {
  DetailPage({required this.model}) ;
  final DoctorModel model;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
 late DoctorModel model;
  @override
  void initState() {
    model = widget.model;
    super.initState();
  }

  Widget _appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        BackButton(color: Theme.of(context).primaryColor),
        IconButton(
            icon: Icon(
              model.isfavourite ? Icons.favorite : Icons.favorite_border,
              color: model.isfavourite ? Colors.red : LightColor.grey,
            ),
            onPressed: () {
              setState(() {
                model.isfavourite = !model.isfavourite;
              });
            })
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = TextStyles.title.copyWith(fontSize: 25).bold;
    if (AppTheme.fullWidth(context) < 393) {
      titleStyle = TextStyles.title.copyWith(fontSize: 23).bold;
    }
    return Scaffold(
      backgroundColor: LightColor.extraLightBlue,
      body: SafeArea(
        bottom: false,
        top: false,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: model.image,
              child: Image.asset(model.image, fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.4,),
            ),
            DraggableScrollableSheet(
              maxChildSize: .8,
              initialChildSize: .6,
              minChildSize: .6,
              builder: (context, scrollController) {
                return Container(
                  height: AppTheme.fullHeight(context) * .5,
                  padding: EdgeInsets.only(left:19,right:19,top: 16),//symmetric(horizontal: 19, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    controller: scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                model.name,
                                style: titleStyle,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.check_circle,
                                  size: 18,
                                  color: Theme.of(context).primaryColor),
                              Spacer(),
                              RatingStar(
                                rating: model.rating,
                              )
                            ],
                          ),
                          subtitle: Text(
                            model.type,
                            style: TextStyles.bodySm.subTitleColor.bold,
                          ),
                        ),
                        Divider(
                          thickness: .3,
                          color: LightColor.grey,
                        ),
                        Row(
                          children: <Widget>[
                            ProgressWidget(
                                value: model.goodReviews,
                                totalValue: 100,
                                activeColor: LightColor.purpleExtraLight,
                                backgroundColor:
                                    LightColor.grey.withOpacity(.3),
                                title: "Good Review",
                                durationTime: 500),
                            ProgressWidget(
                                value: model.totalScore,
                                totalValue: 100,
                                activeColor: LightColor.purpleLight,
                                backgroundColor:
                                    LightColor.grey.withOpacity(.3),
                                title: "Total Score",
                                durationTime: 300),
                            ProgressWidget(
                                value: model.satisfaction,
                                totalValue: 100,
                                activeColor: LightColor.purple,
                                backgroundColor:
                                    LightColor.grey.withOpacity(.3),
                                title: "Satisfaction",
                                durationTime: 800),
                          ],
                        ),
                        Divider(
                          thickness: .3,
                          color: LightColor.grey,
                        ),
                        Text("About", style: titleStyle).vP16,
                        Text(
                          model.description,
                          style: TextStyles.body.subTitleColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: LightColor.grey.withAlpha(150)
                              ),
                              child: Icon(Icons.call, color: Colors.white,),
                            ).ripple(() async{
                              final link = WhatsAppUnilink(
                                phoneNumber: '+020-(109)3194701',
                                text: "السلام عليكم لو سمحت كنت بسأل عن تفاصيل الحجز ",
                              );
                              // Convert the WhatsAppUnilink instance to a string.
                              // Use either Dart's string interpolation or the toString() method.
                              // The "launchUrlString" method is part of "url_launcher_string".
                              await launchUrlString('$link');

                            }, borderRadius:BorderRadius.circular(10), ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: LightColor.grey.withAlpha(150)
                              ),
                              child: Icon(Icons.chat_bubble, color: Colors.white,),
                            ).ripple((){}, borderRadius:BorderRadius.circular(10), ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: LightColor.grey.withAlpha(150)
                              ),
                              child: Icon(Icons.location_on_rounded, color: Colors.white,),
                            ).ripple(()async{
                              final availableMaps = await MapLauncher.installedMaps;
                              await availableMaps.first.showMarker(
                                description: "Welcome To Memos Team Dream",
                                coords: Coords(29.8687866, 31.3200564),
                                title: "Helwan University ",
                              );
                            }, borderRadius:BorderRadius.circular(10), ),

                          ],
                        ).vP16
                      ],
                    ),
                  ),
                );
              },
            ),
            _appbar(),
          ],
        ),
      ),
    );
  }
}
