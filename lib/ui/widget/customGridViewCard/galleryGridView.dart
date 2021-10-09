import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class GalleryGridViewCard extends StatelessWidget {
  final String? gridimage;
  final String? name;
  final String? discribation;

  GalleryGridViewCard({required this.gridimage,this.discribation,this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children:[ Image(
          image: AssetImage(gridimage!),
          fit: BoxFit.cover,
          width: 50,
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 164,),
                Row(
                  children: [
                    Text(name!,style: AppConstants.KheadingText,),
                    SizedBox(width: 5,),
                    Icon(Icons.star,color: Colors.white,size: 15,)
                  ],
                ),
                SizedBox(height: 3,),
                Text(discribation!,style: AppConstants.ksubtext,),
              ],
            ),
          )
    ],
      ),
    );
  }
}
