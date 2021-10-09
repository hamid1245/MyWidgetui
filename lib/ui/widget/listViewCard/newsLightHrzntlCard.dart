import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsLightHrzntlCard extends StatelessWidget {
  String? image;
  String? title;
  String? date;
  String? time;
  String? discribtation;

  NewsLightHrzntlCard(
      {this.title, this.image, this.date, this.discribtation, this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image(
                image: AssetImage(image!),
                width: MediaQuery.of(context).size.width / 4,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 10,
                  ),
                  child: AuthHeading(
                      text: discribtation, style: AppConstants.ktitletext),
                ),
                SizedBox(
                  height:8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    AuthHeading(text: title, style: AppConstants.ksubtext),
                    SizedBox(
                      width: 15,
                    ),
                    AuthHeading(text: date, style: AppConstants.ksubtext),
                    SizedBox(
                      width: 15,
                    ),
                    AuthHeading(text: time, style: AppConstants.ksubtext),
                  ],
                ),
              ],
            ),
          ],
        ),
        Divider(
          thickness: 1,
          endIndent: 17,
          indent: 17,
        )
      ],
    );
  }
}
