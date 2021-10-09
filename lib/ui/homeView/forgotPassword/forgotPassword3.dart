import 'package:bottomnavigationanimation/res.dart';
import 'package:flutter/material.dart';

class ForgotPassword3 extends StatefulWidget {
  @override
  _ForgotPassword3State createState() => _ForgotPassword3State();
}

class _ForgotPassword3State extends State<ForgotPassword3> {
  var _email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(Res.forgotpassord3),
                ),
                Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    color: Color(0xff7EF2E5),
                    child: Text(
                      "Send",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
