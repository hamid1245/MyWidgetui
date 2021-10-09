import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/authOutlineBorderTextFeild.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class ForgotPassword2 extends StatefulWidget {
  @override
  _ForgotPassword2State createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('asset/images/forgot2.png'),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 4.8,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.mail,
                      color: Color(0xff9A2774),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: AuthOutlineBorderTextFeild(
                        hintext: 'Email',
                        controller: _emailController,
                        onPwdTap: () {},
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: AuthHeading(
                      text:
                          'We will send you an instruction to reset your password through email',
                      style: AppConstants.kgraystyle),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              gradient: new LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffBB3D47),
                  Color(0xff9A2774),


                ],
              ),
            ),
            width: 250,
            child: FlatButton(
              // color: Color(0xff008DAB),
              onPressed: () {},
              child: Text(
                'RESET PASSWORD',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xff9A2774),
                  )),
              Text(
                'Back to login',
                style: TextStyle(
                  color: Color(0xff9A2774),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
