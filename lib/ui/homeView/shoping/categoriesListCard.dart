import 'package:bottomnavigationanimation/model/shopingModel/categoriesListModel.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/shopingCustomCard/categoriesListCard.dart';
import 'package:bottomnavigationanimation/ui/widget/shopingCustomCard/shopingCircleIconCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesListCard extends StatefulWidget {
  @override
  _CategoriesListCardState createState() => _CategoriesListCardState();
}

class _CategoriesListCardState extends State<CategoriesListCard> {
  List<CategoriesListModel> categoriesLis = [
    CategoriesListModel(
        icon: Icons.computer,
        text: 'Gadgets and computers',
        trallingicon: Icons.arrow_forward_ios,
        subtext: '100k Items'),
    CategoriesListModel(
        icon: FontAwesomeIcons.child,
        text: 'fashion',
        trallingicon: Icons.arrow_forward_ios,
        subtext: '100k Items'),
    CategoriesListModel(
        icon: FontAwesomeIcons.grin,
        text: 'Beauy and Health',
        trallingicon: Icons.arrow_forward_ios,
        subtext: '100k Items'),
    CategoriesListModel(
        icon: FontAwesomeIcons.babyCarriage,
        text: 'Babies and Kids',
        trallingicon: Icons.arrow_forward_ios,
        subtext: '100k Items'),
    CategoriesListModel(
        icon: FontAwesomeIcons.bed,
        text: 'Home and Garden',
        trallingicon: Icons.arrow_forward_ios,
        subtext: '100k Items'),
    CategoriesListModel(
        icon: FontAwesomeIcons.swimmer,
        text: 'Sports and Hobby',
        trallingicon: Icons.arrow_forward_ios,
        subtext: '100k Items'),
    CategoriesListModel(
        icon: FontAwesomeIcons.ticketAlt,
        text: 'Ticket and Voucher',
        trallingicon: Icons.arrow_forward_ios,
        subtext: '100k Items'),
    CategoriesListModel(
        icon: Icons.restaurant,
        text: 'Service and Food',
        trallingicon: Icons.arrow_forward_ios,
        subtext: '100k Items'),
    CategoriesListModel(
        icon: FontAwesomeIcons.child,
        text: 'fashion',
        trallingicon: Icons.arrow_forward_ios,
        subtext: '100k Items'),
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
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16, left: 10),
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: categoriesLis.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return ShopingCircleIconCard(
                  icon: categoriesLis[i].icon,
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 25),
          child: AuthHeading(text: 'All Categories', style: AppConstants.kblackHeading),
        ),
        Container(
          margin: EdgeInsets.only(top: 16, left: 10),
          height:  MediaQuery.of(context).size.height/1.4,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: categoriesLis.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, i) {
                return CategoriesListCustomCard(
                  icon: categoriesLis[i].icon,
                  text:categoriesLis[i].text ,
                  subtext: categoriesLis[i].subtext,
                  trallingicon: categoriesLis[i].trallingicon,
                );
              }),
        ),
      ],
    );
  }
}
