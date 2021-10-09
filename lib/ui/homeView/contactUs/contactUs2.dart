import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/authOutlineBorderTextFeild.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class ContactUs2 extends StatefulWidget {
  @override
  _ContactUs2State createState() => _ContactUs2State();
}

class _ContactUs2State extends State<ContactUs2> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _message = TextEditingController();
  TextEditingController _phone = TextEditingController();
  String _picked = "Two";
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
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xffDA05B5),
                      Color(0xffF59300),
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: 300,
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                height: MediaQuery.of(context).size.height/1.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                margin: EdgeInsets.only(top: 200,left: 30),

                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    AuthHeading(text: 'Send us a Message', style: AppConstants.kgraystyle),
                    AuthOutlineBorderTextFeild(hintext: 'name'.toUpperCase(), controller: _name , onPwdTap: (){}  , color: Colors.grey),
                    AuthOutlineBorderTextFeild(hintext: 'email'.toUpperCase(), controller: _emailController , onPwdTap: (){}  , color: Colors.grey),
                    AuthOutlineBorderTextFeild(hintext: 'phone'.toUpperCase(), controller: _phone , onPwdTap: (){}  , color: Colors.grey),
                    SizedBox(height: 8,),
                    AuthHeading(text: 'Prefer Method of Communication', style: AppConstants.kgraystyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RadioButtonGroup(
                          orientation: GroupedButtonsOrientation.HORIZONTAL,
                          margin:  EdgeInsets.only(left: 12.0),
                          onSelected: (String selected) => setState(() {
                            _picked = selected;
                          }),
                          labels: <String>[
                            "Email",
                            "Phone",
                          ],
                          picked: _picked,
                          itemBuilder: (Radio rb, Text txt, int i) {
                            return Column(
                              children: <Widget>[
                                rb,
                                txt,
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                    AuthOutlineBorderTextFeild(hintext: ' messsage'.toUpperCase(), controller: _message , onPwdTap: (){}  , color: Colors.grey),
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xffDA05B5),
                            Color(0xffF59300),
                          ],
                        ),
                      ),
                      margin: EdgeInsets.only(top: 15),
                      width: 280,
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'SEND',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
