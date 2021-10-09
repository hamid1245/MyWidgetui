import 'package:bottomnavigationanimation/ui/homeView/aboutUS/aboutUS1.dart';
import 'package:bottomnavigationanimation/ui/homeView/articles/articles.dart';
import 'package:bottomnavigationanimation/ui/homeView/bottomNavigationAnimation/bottomNavigationAnimation.dart';
import 'package:bottomnavigationanimation/ui/homeView/bottomSheet/BottomSheet.dart';
import 'package:bottomnavigationanimation/ui/homeView/contactUs/contactUs1.dart';
import 'package:bottomnavigationanimation/ui/homeView/contactUs/contactUs2.dart';
import 'package:bottomnavigationanimation/ui/homeView/contactUs/contactus3.dart';
import 'package:bottomnavigationanimation/ui/homeView/dilogBox/dialogBox.dart';
import 'package:bottomnavigationanimation/ui/homeView/drewer/drowerMail.dart';
import 'package:bottomnavigationanimation/ui/homeView/expendable/expendableText.dart';
import 'package:bottomnavigationanimation/ui/homeView/expendable/invoiceExpendable.dart';
import 'package:bottomnavigationanimation/ui/homeView/forgotPassword/forgotPassword1.dart';
import 'package:bottomnavigationanimation/ui/homeView/forgotPassword/forgotPassword2.dart';
import 'package:bottomnavigationanimation/ui/homeView/forgotPassword/forgotPassword3.dart';
import 'package:bottomnavigationanimation/ui/homeView/gridView/galleryGridView.dart';
import 'package:bottomnavigationanimation/ui/homeView/gridView/simpleGridViewList.dart';
import 'package:bottomnavigationanimation/ui/homeView/listView/listView.dart';
import 'package:bottomnavigationanimation/ui/homeView/listView/newImageListView.dart';
import 'package:bottomnavigationanimation/ui/homeView/listView/newsLightHrzntl.dart';
import 'package:bottomnavigationanimation/ui/homeView/musicPlayer/musicPlayer.dart';
import 'package:bottomnavigationanimation/ui/homeView/musicPlayer/musicPlayerList.dart';
import 'package:bottomnavigationanimation/ui/homeView/musicPlayer/musicplayer3.dart';
import 'package:bottomnavigationanimation/ui/homeView/onbardScreen/onbard1.dart';
import 'package:bottomnavigationanimation/ui/homeView/onbardScreen/onbard2.dart';
import 'package:bottomnavigationanimation/ui/homeView/phoneVerification/phoneOTP.dart';
import 'package:bottomnavigationanimation/ui/homeView/phoneVerification/phoneVerificationOtp.dart';
import 'package:bottomnavigationanimation/ui/homeView/phoneVerification/phoneVerificationOtp2.dart';
import 'package:bottomnavigationanimation/ui/homeView/setting/iphoneSetting.dart';
import 'package:bottomnavigationanimation/ui/homeView/setting/settingList.dart';
import 'package:bottomnavigationanimation/ui/homeView/shoping/categoriesGirdCard.dart';
import 'package:bottomnavigationanimation/ui/homeView/shoping/categoriesListCard.dart';
import 'package:bottomnavigationanimation/ui/homeView/timeline/timeline1.dart';
import 'package:bottomnavigationanimation/ui/homeView/userAccount/userAccount1.dart';
import 'package:bottomnavigationanimation/ui/homeView/userAccount/userAccount2.dart';
import 'package:bottomnavigationanimation/ui/homeView/userAccount/userAccount3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:onbard2(),
      //AboutUS1(),
      //UserAccount3(),
      //MusicPlayer3()
      //ForgotPassword3(),
      //Contactus3(),
      //Articles(),
      //Given to the umar
     // TimeLine1(title: 'Time Line ',),
      //ContactUs2(),
      //ContactUS1(),
      //UserAccount2(),
      //UserAccount1(),
     // ForgotPassword2(),
     // ForgotPasswort1(),
//      PhoneVerificationOTP2(),
      //PhoneVerificationOTP(),
      //IphoneSetting(),
      //PhoneOTP(),
      //SettingList(),
      //CategoriesGr
      // idCard(),
      //Categories(),
     // MusicPlayer(),
     // MusicPlayerList(),
      //InvoiceExpendable(),
      //ExpendableText(),
     // DrowerMail(),
    // BottomSheetScreen(),
      //DilogBox(),
    //  NewLightHrzntlListView(),
       // NewsImageListView()
     // NewListView(),
      //SimpleGridView(),
   //   GalleryGridView(),
    // HomeView(),
    );
  }
}
