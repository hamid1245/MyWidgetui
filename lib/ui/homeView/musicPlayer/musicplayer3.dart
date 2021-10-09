import 'package:bottomnavigationanimation/res.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/musicplayerCustom/sliderPlay.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class MusicPlayer3 extends StatefulWidget {
  const MusicPlayer3({Key? key}) : super(key: key);

  @override
  _MusicPlayer3State createState() => _MusicPlayer3State();
}

class _MusicPlayer3State extends State<MusicPlayer3> {
  bool isplay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 25,
                )),
            IconButton(
              onPressed: () {

              },
              icon: Icon(
                Icons.comment_bank,
                size: 25,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bluetooth,
                  size: 25,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.music_note,
                  size: 25,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: 25,
                )),
          ],
        ),
      ),
    );
  }

  Widget _getUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Image(image: AssetImage(Res.music3)),
          AuthHeading(text: 'Song name', style: AppConstants.kblacksubheading),
          AuthHeading(text: 'Artist', style: AppConstants.kblacksubheading),
          SliderPlay(),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fast_rewind,
                      size: 35,
                    )),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isplay = !isplay;
                    });
                  },
                  icon: Icon(
                    isplay
                        ? Icons.play_circle_fill_outlined
                        : Icons.pause_circle_filled,
                    size: 50,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fast_forward,
                      size: 35,
                    )),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
