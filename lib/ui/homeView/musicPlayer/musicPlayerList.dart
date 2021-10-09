import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/circleAvatorImage.dart';
import 'package:bottomnavigationanimation/ui/widget/musicplayerCustom/sliderPlay.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPlayerList extends StatefulWidget {
  @override
  _MusicPlayerListState createState() => _MusicPlayerListState();
}

class _MusicPlayerListState extends State<MusicPlayerList> {
  Duration duration = Duration();
  Duration position = Duration();
  double bright = 0.0;
  bool isplay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'asset/images/music.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      AuthHeading(
                          text: 'Music Play',
                          style: AppConstants.kwhiteheading),
                      AuthHeading(
                          text: 'Soolking', style: AppConstants.ksubwhittext),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: AppConstants.whiteText,
                      )),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              CircleAvatorImage(
                  backgroundimage: AssetImage('asset/images/man1.jpg'),
                  radius: 120),
              SizedBox(height: 200,),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20,),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.link,
                      color: AppConstants.whiteText,
                      size: 30,
                    ),
                    Icon(
                      Icons.fast_rewind,size: 35,
                      color: AppConstants.whiteText,
                    ),
                    IconButton(
                      onPressed: () {setState(() {
                        isplay=!isplay;
                      });},
                      icon: Icon(
                       isplay ? Icons.play_circle_fill_outlined : Icons.pause_circle_filled,
                        color: AppConstants.whiteText,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.fast_forward,size: 35,
                      color: AppConstants.whiteText,
                    ),
                    Icon(
                      Icons.all_inclusive,
                      color: AppConstants.whiteText,
                      size: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              SliderPlay(),
            ],
          ),
        ),
      ],
    );
  }
}
