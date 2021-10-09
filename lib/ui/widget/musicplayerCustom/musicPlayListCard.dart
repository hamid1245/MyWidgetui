import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class MusicPlayListCard extends StatelessWidget {
  late String? image;
  late String? text;
  late String? subtext;
  late String? number;
  IconData? icon;
  MusicPlayListCard({this.image,this.text,this.icon,this.subtext,this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

       children: [
         Container(
           margin: EdgeInsets.only(left: 10,right: 10),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(10)),
           ),
           width: MediaQuery.of(context).size.width*2,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
             // Text( number! ,style: TextStyle(color: Colors.white),) ,
               Container(
                 margin: EdgeInsets.only(left: 10,right: 10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                     image: DecorationImage(image: AssetImage(image!),
                     fit: BoxFit.cover
                     )

                 ),
                 height: 50,
                 width: 50,
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   AuthHeading(text: text!, style: AppConstants.ksubwhittext),
                   AuthHeading(text: subtext!, style: AppConstants.ksubwhittext),
                 ],
               ),
               SizedBox(width: 210,),
               Icon(icon,color: AppConstants.whiteText,),
             ],
           ),
         ),
         Divider(color: Colors.white,indent: 15,endIndent: 15,)
       ],

    );
  }
}
