import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/authOutlineBorderTextFeild.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswort1 extends StatefulWidget {
  @override
  _ForgotPasswort1State createState() => _ForgotPasswort1State();
}

class _ForgotPasswort1State extends State<ForgotPasswort1> {
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
        children: [
          Stack(
            children: [
              Container(
                height: 330,
                width: MediaQuery.of(context).size.width,
                // color: Colors.greenAccent,
                child: Image(
                  image: AssetImage('asset/images/lock.jpg'),
                  fit: BoxFit.cover,
                  height: 12,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 280),
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AuthHeading(
                          text: 'FORGOT PASSWORD ',
                          style: AppConstants.kblackHeading),
                      SizedBox(
                        height: 10,
                      ),
                      AuthHeading(
                          text:
                              'Confirm Your email and we will send you and OTP ',
                          style: AppConstants.kgraystyle),
                      AuthOutlineBorderTextFeild(
                        hintext: 'Email',
                        controller: _emailController,
                        onPwdTap: () {},
                        color: Colors.grey,
                      ),
                      SizedBox(height: 9,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          gradient: new LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.topLeft,
                            colors: [
                              Color.fromARGB(255, 25, 178, 238),
                              Color.fromARGB(255, 23, 236, 229)
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xff008DAB),
                  )),
              Text(
                'Back to login',
                style: TextStyle(
                  color: Color(0xff008DAB),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
