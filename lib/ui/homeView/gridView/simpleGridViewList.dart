import 'package:bottomnavigationanimation/model/GridVeiwModel/productGridViewModel.dart';
import 'package:bottomnavigationanimation/ui/widget/CustomGridViewCard/galleryGridView.dart';
import 'package:bottomnavigationanimation/ui/widget/CustomGridViewCard/simpleGridView.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class SimpleGridView extends StatefulWidget {
  @override
  _SimpleGridViewState createState() => _SimpleGridViewState();
}

class _SimpleGridViewState extends State<SimpleGridView> {
  List<ProductGridViewModel> simpleGrid = [
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
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grid List',
          style: TextStyle(color: Colors.black,fontSize: 20),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: _getUI(context),
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
        itemCount: simpleGrid.length,
        itemBuilder: (BuildContext context, i) {
          return simpleGridView(
            gridimage: simpleGrid[i].image,
          );
        });
  }
}
