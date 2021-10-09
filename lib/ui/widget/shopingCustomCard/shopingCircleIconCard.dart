import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ShopingCircleIconCard extends StatelessWidget {
final IconData? icon;

 ShopingCircleIconCard({ this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(icon,color: AppConstants.whiteText,),
        radius:30,
      ),
    );
  }
}
