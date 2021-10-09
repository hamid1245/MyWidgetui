import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/authOutlineBorderTextFeild.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contactus3 extends StatefulWidget {
  const Contactus3({Key? key}) : super(key: key);

  @override
  _Contactus3State createState() => _Contactus3State();
}

class _Contactus3State extends State<Contactus3> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _message = TextEditingController();

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

          Container(
            width: MediaQuery.of(context).size.width / 1.03,
            margin: EdgeInsets.symmetric(vertical: 150, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                AuthHeading(text: 'Stay Touch with us', style: AppConstants.KheadingText,),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric( horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: 330,
                  child: AuthOutlineBorderTextFeild(
                      hintext: 'name',
                      controller: _emailController,
                      onPwdTap: () {},
                      color: Colors.black),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: 330,
                  child: AuthOutlineBorderTextFeild(
                      hintext: 'email',
                      controller: _name,
                      onPwdTap: () {},
                      color: Colors.black),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: 330,
                  child: AuthOutlineBorderTextFeild(
                      hintext: 'Message',
                      controller: _message,
                      onPwdTap: () {},
                      color: Colors.black),
                ),
                SizedBox(height: 10,),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(
                      Radius.circular(3),
                    ),
                  ),
                  color: Colors.red,
                  onPressed: () {},
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
