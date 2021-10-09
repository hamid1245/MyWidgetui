import 'package:flutter/material.dart';
class DrawerCustomCard extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final String? trallingText;

  const DrawerCustomCard({ this.icon, this.text, this.trallingText});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text!),
      trailing: Text(trallingText!),
    );
  }
}
