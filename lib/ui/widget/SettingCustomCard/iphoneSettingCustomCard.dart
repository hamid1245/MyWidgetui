import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class IphoneSettingCustomCard extends StatelessWidget {
final IconData? icon;
final IconData? trallingicon;
final String? text;
final String? trallingtext;
final Color color;

   IphoneSettingCustomCard( {this.icon, this.trallingicon, this.text, this.trallingtext, required this.color });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6
        ),),
          color: color,
        ),

        child: Icon(icon),
      ),
      title: Text(text!),
      trailing: Container(
        width: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AuthHeading(text: trallingtext, style: AppConstants.kblacksubheading),
            Icon(trallingicon),
          ],
        ),
      ),
    );
  }
}
