import 'package:bottomnavigationanimation/navigationHelper/navigationHelper.dart';
import 'package:bottomnavigationanimation/ui/homeView/bottomNavigationAnimation/bottomNavigationAnimation.dart';
import 'package:bottomnavigationanimation/ui/widget/CustomGridViewCard/productGridViewCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'BottomNavigationfifth.dart';
class BottomNavigationFourth extends StatefulWidget {

  @override
  _BottomNavigationFourthState createState() => _BottomNavigationFourthState();
}

class _BottomNavigationFourthState extends State<BottomNavigationFourth> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "product",
          style: AppConstants.KheadingText,
        ),
        leading: Icon(
          Icons.arrow_back,
          color: AppConstants.scaffoldBackgroundColor,
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () { NavigationHelper.pushRoute(context, BottomNavigationFifth());},
            icon: Icon(
              Icons.search,
              color: AppConstants.scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
      body: _getUI(context),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.red,
          selectedItemBackgroundColor: Colors.black,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.calendar_today,
            label: 'Schedule',
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: 'Contacts',
          ),
          FFNavigationBarItem(
            iconData: Icons.attach_money,
            label: 'Bills',
          ),
          FFNavigationBarItem(
            iconData: Icons.note,
            label: 'Notes',
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'Settings',
          ),
        ],
      ),
    );
  }
  Widget _getUI(
      BuildContext context,
      ) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 8.0 / 10.0,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        padding: EdgeInsets.all(8.0),
        scrollDirection: Axis.vertical,
        itemCount: productGridDate.length,
        itemBuilder: (BuildContext context, i) {
          return ProductGridViewCard(
            image: productGridDate[i].image,
            title: productGridDate[i].title,
            price: productGridDate[i].price,
            location: productGridDate[i].location,
            sales: productGridDate[i].sales,
          );
        });
  }
}
