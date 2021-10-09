import 'package:bottomnavigationanimation/model/musicModel.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/musicplayerCustom/customMusicCard.dart';
import 'package:bottomnavigationanimation/ui/widget/musicplayerCustom/musicAlbumCard.dart';
import 'package:bottomnavigationanimation/ui/widget/musicplayerCustom/musicPlayListCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';


class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  List <MusicModel> musicList = [
    MusicModel(text: 'Pakistani Music', image: 'asset/images/backg1.png'),
    MusicModel(text: 'HollyWord  Music', image: 'asset/images/backg2.png'),
    MusicModel(text: 'BollyWord Music', image: 'asset/images/backg3.png'),
    MusicModel(text: 'Turkish Music', image: 'asset/images/backg4.png'),
    MusicModel(text: 'Pashto Music', image: 'asset/images/backg5.png'),
  ];
  List <PlayListModel> playlist = [
    PlayListModel(text: 'tum hi ana',subtext: 'Soolking',image: 'asset/images/backg1.png',icon: Icons.more_horiz,),
    PlayListModel(text: 'Hollywood',subtext: 'Soolking',image: 'asset/images/man2.jpg',icon: Icons.more_horiz,),
    PlayListModel(text: 'Pakistani',subtext: 'Soolking',image: 'asset/images/man1.jpg',icon: Icons.more_horiz,),
    PlayListModel(text: 'Turkish',subtext: 'Soolking',image: 'asset/images/man3.jpg',icon: Icons.more_horiz,),
    PlayListModel(text: 'Indian',subtext: 'Soolking',image: 'asset/images/man4.jpg',icon: Icons.more_horiz,),
    PlayListModel(text: 'Molarka',subtext: 'Soolking',image: 'asset/images/man1.jpg',icon: Icons.more_horiz,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.scaffoldBackgroundColor,
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return
      // CustomMusicCard(text: 'hello',image: 'asset/images/backg2.png',);
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          ListTile(
              leading: IconButton(onPressed: () {},
                  icon: Icon(Icons.menu, color: AppConstants.whiteText,)),
              title: AuthHeading(
                text: 'Music Player', style: AppConstants.kwhiteheading,),
              trailing: IconButton(onPressed: () {},
                  icon: Icon(Icons.search, color: AppConstants.whiteText,)),
          ),
          Container(
            height: 230,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: ListView.builder(
                itemCount: musicList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return CustomMusicCard(
                    text: musicList[i].text,
                    image: musicList[i].image,

                  );
                }),
          ),
          SizedBox(height: 20,),
          AuthHeading(text: '   Albums', style: AppConstants.kwhiteheading),
          Container(
            height: 170,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: ListView.builder(
                itemCount: musicList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return MusicAlbumCard(
                    text: musicList[i].text,
                    image: musicList[i].image,

                  );
                }),
          ),
          AuthHeading(text: '   PlayList', style: AppConstants.kwhiteheading),
          SizedBox(height: 5,),
          Container(
            height: 265,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
                itemCount: playlist.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, i) {
                  return MusicPlayListCard(
                    text: playlist[i].text,
                    image: playlist[i].image,
                    icon: playlist[i].icon,
                    subtext: playlist[i].subtext,
                  );
                }),
          ),
        ],
      );
  }
}
