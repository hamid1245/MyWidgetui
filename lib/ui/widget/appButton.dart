import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double padding;

  const AppButton(
      {required this.text, required this.onPressed, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Container(
        margin: EdgeInsets.only(bottom:25,top: 30),
        height: 35,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Color(0xffF8EBE8),
        ),
        child: FlatButton(
          // minWidth: MediaQuery.of(context).size.width,
          onPressed: () => onPressed(),
          child: Text(text),
          // color: AppConstants.appBaseColor,
        ),
      ),
    );
  }
}
