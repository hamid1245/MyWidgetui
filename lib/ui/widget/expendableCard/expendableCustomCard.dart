import 'package:flutter/material.dart';

class ExpendableCustomCard extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final VoidCallback? onpressed;
  final List<Widget> children;
  final IconData? trallingIcon;

  ExpendableCustomCard(
      {this.icon,
      this.text,
      this.trallingIcon,
      required this.children,
      this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        leading: Icon(icon),
        title: Text(text!),
        trailing: IconButton(
          icon: Icon(trallingIcon),
          onPressed: onpressed,
        ),
        children: children);
  }
}
