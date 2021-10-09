import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class DrawerAgriCustomCard extends StatelessWidget {
  final IconData? icon;
  final String? text;
  DrawerAgriCustomCard({ this.icon, this.text, });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: AppConstants.whiteText,),
      title: Text(text!,style: AppConstants.KheadingText,),
    );
  }
}
