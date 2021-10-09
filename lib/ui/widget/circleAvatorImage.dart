import 'package:flutter/material.dart';
class CircleAvatorImage extends StatelessWidget {
final ImageProvider backgroundimage;
final double radius;

CircleAvatorImage({required this.backgroundimage, required this.radius});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: backgroundimage,
      radius: radius,
    );
  }
}
