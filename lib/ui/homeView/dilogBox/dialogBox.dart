import 'package:bottomnavigationanimation/navigationHelper/navigationHelper.dart';
import 'package:bottomnavigationanimation/ui/homeView/dilogBox/stackImageDilog.dart';
import 'package:bottomnavigationanimation/ui/widget/dilogBoxCustom/dilogCustom.dart';
import 'package:flutter/material.dart';

class DilogBox extends StatefulWidget {
  @override
  _DilogBoxState createState() => _DilogBoxState();
}

class _DilogBoxState extends State<DilogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return Column(
      children: [
        Center(
          heightFactor: 3,
          child: FlatButton(
              onPressed: () {
                NavigationHelper.pushRoute(context, DilogCustom());
              },
              child: Text('Show Dilog')),
        ),
        FlatButton(
            onPressed: () {
              NavigationHelper.pushRoute(context, stackImageDilog());
            },
            child: Text('image Dilog')),
      ],
    );
  }
}
