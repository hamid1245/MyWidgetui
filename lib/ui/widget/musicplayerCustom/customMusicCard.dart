import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class CustomMusicCard extends StatelessWidget {
final String? image;
final String? text;

   CustomMusicCard({ this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,top: 20),
      height: 180,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xff32373D)
      ),
      child: Column(
        children: [
          Image(image: AssetImage(image!),height: 150,),
          AuthHeading(text: text, style: AppConstants.kwhiteheading)

        ],
      ),
    );
  }
}
