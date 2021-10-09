import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class CategoriesGridCustomCard extends StatelessWidget {
  IconData? icon;
  String? text;

  CategoriesGridCustomCard({this.icon,this.text,});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Color(0xffC9C9C9).withOpacity(0.3),
      child: Container(
        margin: EdgeInsets.only(top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon,size: 38,),
            SizedBox(height: 10,),
            AuthHeading(text: text, style: AppConstants.kblacksubheading),
          ],
        ),
      ),
    );
  }
}
