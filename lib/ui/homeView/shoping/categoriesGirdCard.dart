import 'package:bottomnavigationanimation/model/shopingModel/categoriesListModel.dart';
import 'package:bottomnavigationanimation/navigationHelper/navigationHelper.dart';
import 'package:bottomnavigationanimation/ui/homeView/shoping/categoriesListCard.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/shopingCustomCard/categoriesGridCustomCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesGridCard extends StatefulWidget {
  const CategoriesGridCard({Key? key}) : super(key: key);

  @override
  _CategoriesGridCardState createState() => _CategoriesGridCardState();
}

class _CategoriesGridCardState extends State<CategoriesGridCard> {
  List<CategoriesListModel> categoriesgrid = [
    CategoriesListModel(
      icon: Icons.computer,
      text: 'Gadgets And\n Computers',
    ),
    CategoriesListModel(
      icon: FontAwesomeIcons.child,
      text: 'Fashion',
    ),
    CategoriesListModel(
      icon: FontAwesomeIcons.grin,
      text: 'Beauty And  Healty',
    ),
    CategoriesListModel(
      icon: FontAwesomeIcons.babyCarriage,
      text: 'Babies And  Kids',
    ),
    CategoriesListModel(
      icon: FontAwesomeIcons.bed,
      text: 'Home And  Garden',
    ),
    CategoriesListModel(
      icon: FontAwesomeIcons.swimmer,
      text: 'Sports And  Hobby',
    ),
    CategoriesListModel(
      icon: FontAwesomeIcons.ticketAlt,
      text: 'Ticket And  Garden',
    ),
    CategoriesListModel(
      icon: Icons.restaurant,
      text: 'Service And  Food',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: AuthHeading(
          text: 'Categories',
          style: AppConstants.kwhiteheading,
        ),
        actions: [
          IconButton(onPressed: () =>NavigationHelper.pushRoute(context, CategoriesListCard()), icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: _getUI(context),
    );
  }

  Widget _getUI(
    BuildContext context,
  ) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/images/maket.jpg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 80),
            child: AuthHeading(
                text:
                    'Browse through Million of Products\n \t\t\t\t\t\t\t\t\t\t\t\t in Many Categories',
                style: AppConstants.kwhitetextmiddle),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 240),
          height: 500,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5 / 3,
                  crossAxisSpacing: 02,
                  mainAxisSpacing: 2),
              padding: EdgeInsets.all(8.0),
              scrollDirection: Axis.vertical,
              itemCount: categoriesgrid.length,
              itemBuilder: (BuildContext context, i) {
                return CategoriesGridCustomCard(
                  icon: categoriesgrid[i].icon,
                  text: categoriesgrid[i].text,
                );
              }),
        ),
      ],
    );
  }
}
