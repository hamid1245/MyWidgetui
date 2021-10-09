import 'package:bottomnavigationanimation/model/GridVeiwModel/productGridViewModel.dart';
import 'package:bottomnavigationanimation/navigationHelper/navigationHelper.dart';
import 'package:bottomnavigationanimation/ui/homeView/drewer/drawerAgri.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/circleAvatorImage.dart';
import 'package:bottomnavigationanimation/ui/widget/customGridViewCard/simpleGridView.dart';
import 'package:bottomnavigationanimation/ui/widget/drawerCard/drawerCustomCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class DrowerMail extends StatefulWidget {
  @override
  _DrowerMailState createState() => _DrowerMailState();
}

class _DrowerMailState extends State<DrowerMail> {
  List<ProductGridViewModel> simpleGridDrawer = [
    ProductGridViewModel(
      image: 'asset/images/image1.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/man1.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/man2.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/image2.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/man2.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/image3.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/airpord.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/image1.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/image2.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/image3.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/watch.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/man2.jpg',
    ), ProductGridViewModel(
      image: 'asset/images/image1.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/man1.jpg',
    ),
    ProductGridViewModel(
      image: 'asset/images/man2.jpg',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
      appBar: AppBar(actions: [
        IconButton(onPressed: (){NavigationHelper.pushRoute(context, DrawerAgri());}, icon: Icon(Icons.send))
      ],),
      drawer: _drawer(),
    );
  }

  Widget _getUI(
      BuildContext context,
      ) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 8.0 / 10.0,
            crossAxisSpacing: 02,
            mainAxisSpacing: 3),
        padding: EdgeInsets.all(8.0),
        scrollDirection: Axis.vertical,
        itemCount: simpleGridDrawer.length,
        itemBuilder: (BuildContext context, i) {
          return simpleGridView(
            gridimage: simpleGridDrawer[i].image,
          );
        });
  }

  _drawer() {
    return Drawer(
      child: Wrap(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/image2.jpg'),
                      fit: BoxFit.cover),
                ),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatorImage(
                            backgroundimage: AssetImage('asset/images/man2.jpg'),
                            radius: 25),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AuthHeading(
                                  text: 'Fakher javed',
                                  style: AppConstants.KheadingText),
                              AuthHeading(
                                  text: 'fakher@infusiblecoder',
                                  style: AppConstants.ksubwhittext),
                            ],
                          ),
                          SizedBox(width: 140,),
                          Icon(Icons.arrow_drop_down,color: Colors.white,),
                        ],
                      ),
                    ],
                  ),
                ),),
            DrawerCustomCard(icon: Icons.move_to_inbox,text: 'All Inboxes',trallingText: '75',),
            Divider(),
            DrawerCustomCard(icon: Icons.inbox,text: ' Inbox',trallingText: '55',),
            DrawerCustomCard(icon: Icons.label,text: 'Priority Inbox',trallingText: '5 new',),
            DrawerCustomCard(icon: Icons.person,text: 'social',trallingText: '10 new',),
            Divider(),
            DrawerCustomCard(icon: Icons.star,text: ' Starred',trallingText: ''),
            DrawerCustomCard(icon: Icons.send,text: 'Send',trallingText: ''),
            DrawerCustomCard(icon: Icons.spa,text: 'spam',trallingText: '4 new',),
            DrawerCustomCard(icon: Icons.delete,text: ' Trash',trallingText: ''),
            Divider(),
            DrawerCustomCard(icon: Icons.settings,text: ' Settings',trallingText: ''),
          ],
        ),
      ]
      ),
    );
  }
}
