import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class SliderPlay extends StatefulWidget {

  @override
  _SliderPlayState createState() => _SliderPlayState();
}

class _SliderPlayState extends State<SliderPlay> {
 double _lowerplay = 0.0;
  double _highplay = 10.0;
  double bright = 0.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: AppConstants.whiteText,
      inactiveColor: Colors.red,
      label: bright.abs().toString(),
      min: _lowerplay,
        max: _highplay,
        value: bright,
        onChanged: (val) {
      setState(() {
        bright=val;
      });
    });
  }
}
