import 'package:bottomnavigationanimation/ui/widget/appButton.dart';
import 'package:bottomnavigationanimation/ui/widget/bottomSheetCard/bottomSheetCard.dart';
import 'package:flutter/material.dart';
class ListBottomSheet extends StatefulWidget {

  @override
  _ListBottomSheetState createState() => _ListBottomSheetState();
}

class _ListBottomSheetState extends State<ListBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>_listBottomSheet(),
      ),
      body: _getUI(context) ,
    );
  }
  Widget _getUI(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100,),
      ],
    );
  }
  _listBottomSheet() {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: 250,
        child: Column(
          children: [
            BottomSheetCard(
              icon: Icons.remove_red_eye,
              text: 'Preview',
            ),
            BottomSheetCard(
              icon: Icons.person_add,
              text: 'Share',
            ),
            BottomSheetCard(
              icon: Icons.link,
              text: 'Get Link',
            ),
            BottomSheetCard(
              icon: Icons.copy,
              text: 'Make a copy',
            ),
          ],
        ),
      ),
    );
  }
}
