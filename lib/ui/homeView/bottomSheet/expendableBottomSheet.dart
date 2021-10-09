
import 'package:bottomnavigationanimation/ui/widget/appButton.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/bottomSheetCard/bottomSheetCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class ExpendableBottomSheet extends StatefulWidget {

  @override
  _ExpendableBottomSheetState createState() => _ExpendableBottomSheetState();
}

class _ExpendableBottomSheetState extends State<ExpendableBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>_ExpendedBottomSheet(),
      ),
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context){
    return Column(
      children: [
        AppButton(text: 'Expendable Bottom  ', onPressed: ()=> _ExpendedBottomSheet()  , padding: 50),
      ],
    );
  }

  _ExpendedBottomSheet() {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              color: Colors.indigoAccent,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      AuthHeading(
                          text: 'Fakher javed', style: AppConstants.kwhiteheading),
                      AuthHeading(
                          text: 'Coffee Shop', style: AppConstants.ksubwhittext),
                    ],
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        child: Icon(
                          Icons.directions_bike_outlined,
                          color: Colors.white,
                        ),),
                      SizedBox(
                        height: 3,
                      ),
                      AuthHeading(
                          text: '15 min', style: AppConstants.ksubwhittext),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomSheetExpendedCard(text: 'Call ',icon: Icons.call,),
                  BottomSheetExpendedCard(text: 'Website',icon: Icons.web_sharp,),
                  BottomSheetExpendedCard(text: 'save',icon: Icons.add_circle_outline,),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            BottomSheetCard(icon: Icons.location_on_outlined,text: '709 Kohat, pakistan',),
            BottomSheetCard(icon: Icons.call,text: '(0092)-3346578961',),
            BottomSheetCard(icon: Icons.watch_later_outlined,text: 'Wed, 10 Pm',),
            BottomSheetCard(icon: Icons.menu,text: 'Menus',),
            BottomSheetCard(icon: Icons.label,text: 'Add lable',),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: AuthHeading(text: 'PHOTOS', style: AppConstants.kblackHeading),
            ),
            Container(
              margin: EdgeInsets.all(3),
              height: 100,
              child: ListView.builder(
                  itemCount: img.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context ,i){
                    return Container(
                      margin: EdgeInsets.all(3),
                      height: 100,
                      width: 100,
                      child: Image.asset(img[i],fit: BoxFit.cover,),
                    );
                  }),
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}

List <String> img=[
  'asset/images/man1.jpg',
  'asset/images/image1.jpg',
  'asset/images/image2.jpg',
  'asset/images/image3.jpg',
  'asset/images/image4.jpg',
  'asset/images/room1.jpg',
  'asset/images/room2.jpg',
];
