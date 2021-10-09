import 'package:bottomnavigationanimation/model/GridVeiwModel/productGridViewModel.dart';
import 'package:bottomnavigationanimation/ui/widget/CustomGridViewCard/galleryGridView.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class GalleryGridView extends StatefulWidget {
  @override
  _GalleryGridViewState createState() => _GalleryGridViewState();
}

class _GalleryGridViewState extends State<GalleryGridView> {
  List<ProductGridViewModel> simpleGrid = [
    ProductGridViewModel(
      image: 'asset/images/image1.jpg',
      title: 'airpord',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/man1.jpg',
      title: 'man1',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/man2.jpg',
      title: 'man2',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/image2.jpg',
      title: 'airpord',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/man2.jpg',
      title: 'man2',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/image3.jpg',
      title: 'man3',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/airpord.jpg',
      title: 'airpord',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/image1.jpg',
      title: 'park',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/image2.jpg',
      title: 'beauty park',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/image3.jpg',
      title: 'wawoo',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/watch.jpg',
      title: 'watch',
      location: 'beautifull',
    ),
    ProductGridViewModel(
      image: 'asset/images/man2.jpg',
      title: 'man2',
      location: 'beautifull',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grid List',
          style: AppConstants.KheadingText,
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
            crossAxisCount: 2,
            childAspectRatio: 8.0 / 10.0,
            crossAxisSpacing: 02,
            mainAxisSpacing: 3),
        padding: EdgeInsets.all(8.0),
        scrollDirection: Axis.vertical,
        itemCount: simpleGrid.length,
        itemBuilder: (BuildContext context, i) {
          return GalleryGridViewCard(
            gridimage: simpleGrid[i].image,
            discribation: simpleGrid[i].location,
            name: simpleGrid[i].title,
          );
        });
  }
}
