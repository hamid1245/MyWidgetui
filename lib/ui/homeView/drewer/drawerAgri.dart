import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/drawerCard/drawerAgriCustomCard.dart';
import 'package:bottomnavigationanimation/ui/widget/drawerCard/drawerCustomCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerAgri extends StatefulWidget {
  const DrawerAgri({Key? key}) : super(key: key);

  @override
  _DrawerAgriState createState() => _DrawerAgriState();
}

class _DrawerAgriState extends State<DrawerAgri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: _drawerAgri(),
    );
  }

  _drawerAgri() {
    return Drawer(
      child: Wrap(
        children: [
          Container(
            child: Stack(
              children: [
                Image(
                  image: AssetImage('asset/images/plant.png'),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.cancel,
                        color: AppConstants.whiteText,
                      ),
                      onPressed: () {Navigator.pop(context);},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image(
                              image: AssetImage('asset/images/logo.png'),
                              height: 100,
                              width: 150,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    DrawerAgriCustomCard(
                      icon: Icons.spa,
                      text: 'PLANTS',
                    ),
                    DrawerAgriCustomCard(
                      icon: Icons.shopping_cart,
                      text: 'PRODUCT',
                    ),
                    DrawerAgriCustomCard(
                      icon: Icons.flare,
                      text: 'FLOWERS',
                    ),
                    DrawerAgriCustomCard(
                      icon: Icons.home,
                      text: 'PROCESS',
                    ),
                    SizedBox(
                      height: 330,
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    DrawerAgriCustomCard(
                      icon: Icons.arrow_forward,
                      text: 'EXPLORE',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
