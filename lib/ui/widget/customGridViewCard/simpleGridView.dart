import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class simpleGridView extends StatelessWidget {
  final String? gridimage;

  simpleGridView({required this.gridimage,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image(
        image: AssetImage(gridimage!),
        fit: BoxFit.cover,
        width: 50,
      ),
    );
  }
}