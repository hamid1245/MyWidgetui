import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PhoneVerificationOTP2 extends StatefulWidget {
  const PhoneVerificationOTP2({Key? key}) : super(key: key);

  @override
  _PhoneVerificationOTP2State createState() => _PhoneVerificationOTP2State();
}

class _PhoneVerificationOTP2State extends State<PhoneVerificationOTP2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Image(
            image: AssetImage('asset/images/verifiy2.png'),
            height: 300,
            width: MediaQuery.of(context).size.width,
          ),
          AuthHeading(
              text: 'Choose Verification Method',
              style: AppConstants.kblackHeading),
          SizedBox(
            height: 10,
          ),
          AuthHeading(
              text: 'Choose One of the Method to get the verification code',
              style: AppConstants.kgraystyle),
          SizedBox(
            height: 30,
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: 'Email Click');
            },
            leading: Image(
              image: AssetImage('asset/images/gmail.png'),
              height: 70,
            ),
            title:
                AuthHeading(text: 'Email ', style: AppConstants.kblackHeading),
            subtitle: AuthHeading(
              text: 'FakherJaveed@infuiblecoder',
              style: AppConstants.kgraystyle,
            ),
          ),
          Divider(
            color: Colors.grey,
            indent: 23,
            endIndent: 20,
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: 'Phone Click');
            },
            leading: Image(
              image: AssetImage('asset/images/gphone.png'),
              height: 60,
            ),
            title:
                AuthHeading(text: 'Phone ', style: AppConstants.kblackHeading),
            subtitle: AuthHeading(
              text: '3361493925',
              style: AppConstants.kgraystyle,
            ),
          ),
          Divider(
            color: Colors.grey,
            indent: 23,
            endIndent: 20,
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: 'WhatsApp Click');
            },
            leading: Image(
              image: AssetImage('asset/images/gwhatsApp.png'),
              height: 60,
            ),
            title: AuthHeading(
                text: 'WhatsApp ', style: AppConstants.kblackHeading),
            subtitle: AuthHeading(
              text: '3349825890',
              style: AppConstants.kgraystyle,
            ),
          ),
          Divider(
            color: Colors.grey,
            indent: 23,
            endIndent: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                  size: 20,
                ),
              ),
              Text(
                'Back',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
