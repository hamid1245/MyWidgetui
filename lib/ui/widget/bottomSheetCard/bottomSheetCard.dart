import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class BottomSheetCard extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final Color? color;

  BottomSheetCard({ this.icon, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return
      ListTile(
        leading: Icon(icon,color: Colors.deepPurpleAccent,),
        title: Text(text!),
      );
  }
}



class BottomSheetExpendedCard extends StatelessWidget {
  final IconData? icon;
  final String? text;

  BottomSheetExpendedCard({ this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: Colors.deepPurpleAccent,),
        Text(text!,style: AppConstants.KsubdeepPurpleAccent,)
      ],
    );
  }
}
class BottomSheetListViewBuilder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage('asset/images/'),),
    );
  }
}

