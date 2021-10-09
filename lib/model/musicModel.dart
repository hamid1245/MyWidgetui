import 'package:flutter/material.dart';
class MusicModel{
  late String? image;
  late String? text;
  MusicModel({this.image,this.text});

}
class PlayListModel{
  late String? image;
  late String? text;
  late String? subtext;
  // late String? number;
  IconData? icon;
  PlayListModel({this.image,this.text,this.icon,this.subtext,});
}
