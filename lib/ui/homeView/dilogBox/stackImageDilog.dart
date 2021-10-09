import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/circleAvatorImage.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class stackImageDilog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage('asset/images/man1.jpg'),
                fit: BoxFit.cover,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu_sharp,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180, left: 90),
                child: Column(
                  children: [
                    CircleAvatorImage(
                        backgroundimage: AssetImage('asset/images/man2.jpg'),
                        radius: 40),
                    AppConstants.ksizedbos,
                    AuthHeading(
                        text: 'fakher javed', style: AppConstants.KheadingText),
                    AuthHeading(
                        text: 'co - Founder', style: AppConstants.KheadingText),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.facebook,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.google, color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.twitter,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Image(image: AssetImage('asset/images/man1.jpg'),),
        ],
      ),
    );
  }
}
