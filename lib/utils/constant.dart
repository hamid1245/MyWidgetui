import 'package:flutter/material.dart';

class AppConstants {
  static const Color appBaseColor = Colors.lightBlueAccent;
  static const Color buttonColor = Colors.red;
  static const Color scaffoldBackgroundColor = Colors.black;
  static const Color iconsColor = buttonColor;
  static const Color selectedListColor = Colors.blue;
  static const Color unSelectListColor = Colors.white;
  static const Color TextFieldBorderColor = Color(0xff4F4F4F);
  static const Color TextFieldFocusedBorderColor = Color(0xff343434);
  static const Color darkBlue = Color(0xff0000FF);
  static const Color lightblue = Color(0xff0065ea);
  static const Color darkcolor = Color(0xffE5ECF4);
  static const Color shadowColor = Color(0xff262A34);
  static const Color whiteText = Colors.white;
  static const Color darkshadowcolor = Colors.grey;
  static const Color orangecolor = Colors.deepOrange;


  static const KheadingText = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: Colors.white
  ); static const kwhitetextmiddle = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Colors.white
  );
  static const kblackHeading = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );
  static const kblacksubheading = TextStyle(
      fontSize: 16,
      color: Colors.black
  );
  static const kblueheading = TextStyle(
    fontSize: 20,
    color: Colors.lightBlue,
    fontWeight: FontWeight.w700,
  );static const kwhiteheading = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: whiteText,
  );
  static const kloginSecondheading = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppConstants.selectedListColor,
  );
  static const ksubtext = TextStyle(
    fontSize: 10,
    color: Colors.black26,
      fontWeight: FontWeight.bold
  );static const kblacksubtext = TextStyle(
    fontSize: 15,
    color: Colors.black,
  );
  static const KsubdeepPurpleAccent = TextStyle(
    fontSize: 10,
      color: Colors.deepPurpleAccent,
      fontWeight: FontWeight.bold
  );
  static const ksubwhittext = TextStyle(
    fontSize: 15,
    color: whiteText,
  );
  static const kdarkgraystyle = TextStyle(
    fontSize: 10,
    color: shadowColor,
  );static const kgraystyle = TextStyle(
    fontSize: 13,
    color: darkshadowcolor,
  );
  static const ktextFeild = TextStyle(
    fontSize: 15,
    color: AppConstants.darkBlue,
  );
  static const ksizedbos= SizedBox(
    height: 10,
  );
  static const ktitletext = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      color: Colors.black
  );
}
