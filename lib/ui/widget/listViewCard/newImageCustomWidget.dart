import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class NewsImageCustomWidget extends StatelessWidget {
  String? image;
  String? title;
  String? date;
  String? time;
  String? discribtation;

  NewsImageCustomWidget(
      {this.title, this.image, this.date, this.discribtation, this.time});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(image!),
          width: MediaQuery.of(context).size.width,
          height: 200,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, top: 100, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AuthHeading(text: date, style: AppConstants.ksubwhittext),
              AuthHeading(text: time, style: AppConstants.ksubwhittext),
              Container(
                color: Colors.grey.withOpacity(0.6),
                  child: AuthHeading(
                      text: title, style: AppConstants.ksubwhittext)),
            ],
          ),
        ),
        AppConstants.ksizedbos,
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 10, top: 130),
          child: AuthHeading(
              text: discribtation, style: AppConstants.KheadingText),
        ),
        AppConstants.ksizedbos,
      ],
    );
  }
}
