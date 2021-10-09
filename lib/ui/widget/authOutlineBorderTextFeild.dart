import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthOutlineBorderTextFeild extends StatelessWidget {
  // final String label;
  final String hintext;
  final bool isPasswordField;
  final bool visible;
  final Color color;
  // final Function(String) validator;
  final TextEditingController controller;
  final VoidCallback onPwdTap;

  AuthOutlineBorderTextFeild(
      {required this.hintext,
        // required this.validator,
        required this.controller,
        required this.onPwdTap,
        this.isPasswordField = false,
        this.visible = false, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: TextFormField(
          // validator: (val) => validator(val!),
          controller: controller,
          obscureText: visible,
          style: TextStyle(
              letterSpacing: 1,
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            hintText: hintext,hintStyle: TextStyle(color: color),
            suffixIcon: isPasswordField
                ? InkWell(
              onTap: () => onPwdTap(),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 19.0, top: 19, bottom: 19, right: 10),
                child: visible
                    ? Icon(CupertinoIcons.eye_slash)
                    : Icon(CupertinoIcons.eye),
              ),
            )
                : null,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            )
            // errorBorder: UnderlineInputBorder(
            //     borderSide: BorderSide(color: Colors.red,width: 5),
            //     borderRadius: BorderRadius.circular(12)),
            // focusedErrorBorder:  OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black,width: 5),
            //
            //     borderRadius: BorderRadius.circular(12)),
            // focusedBorder: UnderlineInputBorder(
            //     borderSide: BorderSide.none,
            //     borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
