import 'package:flutter/material.dart';
class AuthHeading extends StatelessWidget {
  final String? text;
  final TextStyle style;

  AuthHeading({required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style:style,
    );
  }
}
