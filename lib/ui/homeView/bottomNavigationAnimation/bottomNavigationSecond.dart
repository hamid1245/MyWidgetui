import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:bottomnavigationanimation/model/GridVeiwModel/productGridViewModel.dart';
import 'package:bottomnavigationanimation/navigationHelper/navigationHelper.dart';
import 'package:bottomnavigationanimation/ui/homeView/bottomNavigationAnimation/bottomNavigationThird.dart';
import 'package:bottomnavigationanimation/ui/widget/CustomGridViewCard/productGridViewCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

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
];

class BottomNavigationSecond extends StatefulWidget {
  @override
  _BottomNavigationSecondState createState() => _BottomNavigationSecondState();
}

class _BottomNavigationSecondState extends State<BottomNavigationSecond> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
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
            onPressed: () {NavigationHelper.pushRoute(context, BottomNavigationThird());},
            icon: Icon(
              Icons.search,
              color: AppConstants.scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNVBar(),
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

  Widget BottomNVBar() {
    return BottomNavyBar(
      selectedIndex: index,
      onItemSelected: (index) => setState(
        () => this.index = index,
      ),
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text('Message'),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Favorite'),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.add_circle_outline),
          title: Text('Add'),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
