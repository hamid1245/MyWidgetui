/**
 * Author: Ambika Dulal
 * profile: https://github.com/Ambikadulal
 */
import 'package:bottomnavigationanimation/model/GridVeiwModel/productGridViewModel.dart';
import 'package:bottomnavigationanimation/navigationHelper/navigationHelper.dart';
import 'package:bottomnavigationanimation/ui/widget/CustomGridViewCard/productGridViewCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'bottomNavigationSecond.dart';


final List<ProductGridViewModel> productGridDate = [
  ProductGridViewModel(
    image: 'asset/images/boot.png',
    title: 'Bata boot',
    location: 'daraz pakistan',
    price: '180',
    sales: '5 sales',
  ),
  ProductGridViewModel(
    image: 'asset/images/laptop.jpg',
    title: 'Dell laptop',
    location: 'amazon',
    price: '800\$',
    sales: '4 sales',
  ),
  ProductGridViewModel(
    image: 'asset/images/watch.jpg',
    title: 'Watch',
    location: 'ali baba china',
    price: '230 PKR',
    sales: '6 sales',
  ),
  ProductGridViewModel(
    image: 'asset/images/airpord.jpg',
    title: 'airpod',
    location: 'amazon uk',
    price: '200\$',
    sales: '10 sales',
  ),
  ProductGridViewModel(
    image: 'asset/images/dron.jpg',
    title: 'drone camra',
    location: 'daraz pakistan',
    price: '10000 PRR',
    sales: '3 sales',
  ),
  ProductGridViewModel(
    image: 'asset/images/boot.png',
    title: 'Bata boot',
    location: 'daraz pakistan',
    price: '180',
    sales: '5 sales',
  ),
  ProductGridViewModel(
    image: 'asset/images/laptop.jpg',
    title: 'Dell laptop',
    location: 'amazon',
    price: '800\$',
    sales: '4 sales',
  ),
  ProductGridViewModel(
    image: 'asset/images/watch.jpg',
    title: 'Watch',
    location: 'ali baba china',
    price: '230 PKR',
    sales: '6 sales',
  ),
  ProductGridViewModel(
    image: 'asset/images/airpord.jpg',
    title: 'airpod',
    location: 'amazon uk',
    price: '200\$',
    sales: '10 sales',
  ),
  ProductGridViewModel(
    image: 'asset/images/dron.jpg',
    title: 'drone camra',
    location: 'daraz pakistan',
    price: '10000 PRR',
    sales: '3 sales',
  ),
];

class HomeView extends StatefulWidget {
  static final String path = "lib/src/pages/hotel/hotelbooking.dart";

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: AppConstants.scaffoldBackgroundColor,
          ),
          title: Text(
            'Product List',
            style: TextStyle(color: AppConstants.scaffoldBackgroundColor),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () { NavigationHelper.pushRoute(context, BottomNavigationSecond());},
               icon: Icon(
                Icons.search,
                color: AppConstants.scaffoldBackgroundColor,
              ),
            ),
          ],
        ),
        body: _getUI(
          context,
        ),
    bottomNavigationBar: CurvedNavigationBar(items: [
      Icon(Icons.favorite,color: Colors.black,),
      Icon(Icons.message,color: Colors.black,),
      Icon(Icons.home,color: Colors.black,),
      Icon(Icons.add_circle_outline,color: Colors.black,),
    ],
    height: 50,
      backgroundColor: Colors.black,
      color: Colors.white,
      buttonBackgroundColor: Colors.white,
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
