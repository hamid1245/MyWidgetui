import 'package:flutter/material.dart';
class SettingListCard extends StatefulWidget {
  String? title;
  IconData? icon;
  SettingListCard({this.icon,this.title});

  @override
  _SettingListCardState createState() => _SettingListCardState();
}

class _SettingListCardState extends State<SettingListCard> {
  bool isColorChange=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          // onTap: (){
          //   setState(() {
          //     isColorChange=!isColorChange;
          //   });
          // },
          title: Text(widget.title!,style: TextStyle(color: Colors.black,letterSpacing: 1),),
          trailing: Icon(widget.icon,color: Colors.black38,),
        ),
        Divider(indent: 14,color: Colors.grey.withOpacity(0.6),endIndent: 10,),

      ],
    );
  }
}
