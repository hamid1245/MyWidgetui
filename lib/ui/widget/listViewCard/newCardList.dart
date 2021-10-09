import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class NewCardList extends StatelessWidget {
  String? image;
  String? title;
  String? date;
  String? time;
  String? discribtation;
  NewCardList({this.title,this.image,this.date,this.discribtation,this.time});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(image!),
            width: MediaQuery.of(context).size.width,
            height: 200,
            fit: BoxFit.cover,
          ),
        Padding(
          padding:  EdgeInsets.only(left: 15,top: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AuthHeading(text: title, style: AppConstants.ksubtext),
              AuthHeading(text: date, style: AppConstants.ksubtext),
              AuthHeading(text: time, style: AppConstants.ksubtext),
            ],
          ),
        ),
          AppConstants.ksizedbos,
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 10),
            child: AuthHeading(text: discribtation, style: AppConstants.ktitletext),
          ),
      AppConstants.ksizedbos,
        ],
      ),
    );
  }
}
