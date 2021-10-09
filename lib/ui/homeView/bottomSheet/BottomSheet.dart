import 'package:bottomnavigationanimation/navigationHelper/navigationHelper.dart';
import 'package:bottomnavigationanimation/ui/widget/appButton.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/bottomSheetCard/bottomSheetCard.dart';
import 'package:bottomnavigationanimation/ui/widget/circleAvatorImage.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatefulWidget {
  @override
  _BottomSheetScreenState createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>showModalBottomSheet(
            context: context, builder: (context) => _showBottom()),
        child: Icon(Icons.arrow_upward_outlined),
      ),
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100,),
      ],
    );
  }

  _showBottom() {
    // circle the bottom sheet
    return GestureDetector(
        onTap: ()=>Navigator.pop(context),
      child: Container(
        // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 350,
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          elevation: 10,
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              CircleAvatorImage(
                  backgroundimage: AssetImage('asset/images/man1.jpg'),
                  radius: 30),
              SizedBox(
                height: 10,
              ),
              AuthHeading(
                  text: 'fakher javed', style: AppConstants.kblackHeading),
              SizedBox(
                height: 5,
              ),
              AuthHeading(text: 'kohat', style: AppConstants.ksubtext),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      AuthHeading(text: '203', style: AppConstants.ksubtext),
                      AuthHeading(
                          text: 'Following', style: AppConstants.ksubtext),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 2,
                    height: 20,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      AuthHeading(text: '1M', style: AppConstants.ksubtext),
                      AuthHeading(text: 'Follower', style: AppConstants.ksubtext),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 2,
                    height: 20,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      AuthHeading(text: '1B', style: AppConstants.ksubtext),
                      AuthHeading(text: 'Like', style: AppConstants.ksubtext),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
