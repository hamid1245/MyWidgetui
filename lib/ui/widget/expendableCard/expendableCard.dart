import 'package:flutter/material.dart';
class ExpendableCard extends StatelessWidget {
final String? text;
final IconData? icon;

   ExpendableCard({ this.text, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(text!,),
            Icon(icon),
        ],
      ),
    );
  }
}
