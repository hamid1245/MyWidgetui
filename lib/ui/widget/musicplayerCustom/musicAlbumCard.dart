import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class MusicAlbumCard extends StatelessWidget {
  final String? image;
  final String? text;

  MusicAlbumCard({ this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10,top:10),
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white38
          ),
          child: Image(image: AssetImage(image!),height: 150,),
        ),
        AuthHeading(text: text, style: AppConstants.ksubwhittext)

      ],
    );
  }
}
