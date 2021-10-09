import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class CategoriesListCustomCard extends StatelessWidget {
  IconData? icon;
  String? text;
  String? subtext;
  IconData? trallingicon;
  CategoriesListCustomCard({this.subtext,this.icon,this.text,this.trallingicon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          trailing: Icon(trallingicon),
          title: AuthHeading(text: text,style: AppConstants.kblacksubheading,),
          subtitle: AuthHeading(text: subtext,style: AppConstants.kgraystyle,),

        ),
        Divider(indent: 70,color: Colors.grey,endIndent: 20,)
      ],
    );
  }
}
