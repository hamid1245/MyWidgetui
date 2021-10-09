import 'package:bottomnavigationanimation/model/setttingModel/settingModel.dart';
import 'package:bottomnavigationanimation/ui/widget/SettingCustomCard/settingListCard.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/circleAvatorImage.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class  SettingList extends StatefulWidget {

  @override
  _SettingListState createState() => _SettingListState();
}

class _SettingListState extends State<SettingList> {
  List<SettingModel> settingList=[
SettingModel(title: 'Credits & Coupons',icon: Icons.card_membership_outlined,),
SettingModel(title: 'Invite friends',icon: Icons.insert_invitation),
SettingModel(title: 'Payments',icon: Icons.credit_card_outlined),
SettingModel(title: 'List your space ',icon: Icons.home),
SettingModel(title: 'Get help',icon: Icons.help_outline_outlined),
SettingModel(title: 'Give us feedback',icon: Icons.feedback_outlined),
  ];
  bool status = false;
  bool isColorChange=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
    );
  }
  Widget _getUI(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 120,),
        Padding(
          padding: const EdgeInsets.only(left: 14,right: 10,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthHeading(text: 'Fakher javeed', style: AppConstants.kblackHeading),
                AuthHeading(text: 'Co-Founder infusiblecoder', style: AppConstants.kgraystyle),
              ],
            ),
              CircleAvatorImage(backgroundimage: AssetImage('asset/images/man1.jpg'), radius: 30),
            ],
          ),
        ),
        Container(
          height:
          MediaQuery.of(context).size.height/1.8,
          child: ListView.builder(
              itemCount: settingList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context ,i){
                return InkWell(
                  child: SettingListCard(
                    title: settingList[i].title,
                    icon: settingList[i].icon,
                  ),
                );
              }),
        ),

      ],
    );
  }
}
