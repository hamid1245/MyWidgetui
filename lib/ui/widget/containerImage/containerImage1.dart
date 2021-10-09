import 'package:flutter/material.dart';
class ContainerImage1 extends StatelessWidget {
  final String? image;
   ContainerImage1({
    this.image
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(15),
            child: Image.asset(image!)),
      ],
    );
  }
}
