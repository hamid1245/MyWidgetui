import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
class ProductGridViewCard extends StatelessWidget {
  String? image;
  String? title;
  String? location;
  String? price;
  String? sales;

  ProductGridViewCard({this.location, this.image, this.price, this.sales, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
          BoxShadow(
          color: Colors.black12,
          offset: Offset(0.0, 4.0),
          blurRadius: 10.0,
        ),
      ],
        ),
      child:  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 4.0),
                  blurRadius: 10.0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 110.0,
                  width: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(image!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    title!,
                    style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined,size: 15,),
                      SizedBox(width: 5,),
                      Text(
                        location!,
                        style: TextStyle(
                            fontSize: 13.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        price!,
                        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            sales!,
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 5),
                  child: SmoothStarRating(
                    isReadOnly: false,
                    size: 15,
                    filledIconData: Icons.star,
                    halfFilledIconData: Icons.star_half,
                    defaultIconData: Icons.star_border,
                    starCount: 5,
                    allowHalfRating: true,
                    spacing: 2.0,
                    color: Colors.amber,
                    borderColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
      );
  }
}


// Text(
// '\$${hotels[index].price} / night',
// style: TextStyle(color: Colors.blue),
// )