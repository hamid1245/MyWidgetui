import 'package:bottomnavigationanimation/navigationHelper/navigationHelper.dart';
import 'package:bottomnavigationanimation/ui/widget/appButton.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/dilogBoxCustom/dilogCustom.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneVerificationOTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('asset/images/email.png'),
              ),
              SizedBox(height: 30.0),
              AuthHeading(
                  text: 'Verify Your Email', style: AppConstants.kblackHeading),
              SizedBox(
                height: 10,
              ),
              Text(
                "Please enter the 4-digit code send \nto your email",
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 20.0),
              OTPFields(),
              SizedBox(height: 20.0),
              Container(
                margin: EdgeInsets.only(left: 130),
                child: Text(
                  "Expiring in 01:22",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.only(left: 50),
                width: 250,
                height: 50,
                child: FlatButton(
                  color: Colors.redAccent,
                  child: AuthHeading(
                    text: "Confirm",
                    style: AppConstants.kwhiteheading,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context, builder: (context) => _ShowDilog(context));
                  },
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                margin: EdgeInsets.only(left: 50),
                width: 250,
                height: 50,
                child: FlatButton(
                  child: AuthHeading(
                    text: "Change Email",
                    style: AppConstants.kgraystyle,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _ShowDilog( context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Image(
            image: AssetImage('asset/images/yes.png'),
            height: 80,
          ),
          Text('Verified!'),
          // Image(image: AssetImage('asset/images/man1.jpg'),),
        ],
      ),
      content: Text('You Have Successfully Verified Your \n the Account'),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 70),
          child: FlatButton(
            onPressed: () {Navigator.pop(context);},
            child: AuthHeading(
              text: 'Go to Dashboard',
              style: AppConstants.ksubwhittext,
            ),
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class OTPFields extends StatefulWidget {
  const OTPFields({
    Key? key,
  }) : super(key: key);

  @override
  _OTPFieldsState createState() => _OTPFieldsState();
}

class _OTPFieldsState extends State<OTPFields> {
  FocusNode? pin2FN;
  FocusNode? pin3FN;
  FocusNode? pin4FN;
  final pinStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.bold);

  @override
  void initState() {
    super.initState();
    pin2FN = FocusNode();
    pin3FN = FocusNode();
    pin4FN = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FN?.dispose();
    pin3FN?.dispose();
    pin4FN?.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 60,
                child: TextFormField(
                  autofocus: true,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2FN);
                  },
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin2FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) => nextField(value, pin3FN),
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin3FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) => nextField(value, pin4FN),
                ),
              ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  focusNode: pin4FN,
                  style: pinStyle,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: inputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FN!.unfocus();
                    }
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

final inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide(color: Colors.grey.shade400),
);

final inputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 16.0),
  border: inputBorder,
  focusedBorder: inputBorder,
  enabledBorder: inputBorder,
);
