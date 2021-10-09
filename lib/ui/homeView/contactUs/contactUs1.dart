import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/authOutlineBorderTextFeild.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUS1 extends StatefulWidget {
  const ContactUS1({Key? key}) : super(key: key);

  @override
  _ContactUS1State createState() => _ContactUS1State();
}

class _ContactUS1State extends State<ContactUS1> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: AuthHeading(text: 'Contact Us',style: AppConstants.kwhitetextmiddle,),
      ),
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          AuthHeading(text: 'You Contact us for suggestion ,testimonial by filling the form below', style: AppConstants.kgraystyle),
          SizedBox(
            height: 20,
          ),
          AuthOutlineBorderTextFeild(hintext: 'name'.toUpperCase(), controller: _name , onPwdTap: (){}  , color: Colors.grey),
          AuthOutlineBorderTextFeild(hintext: 'email'.toUpperCase(), controller: _emailController , onPwdTap: (){}  , color: Colors.grey),
          AuthOutlineBorderTextFeild(hintext: 'text messsage'.toUpperCase(), controller: _message , onPwdTap: (){}  , color: Colors.grey),
          Container(
            margin: EdgeInsets.only(top: 25),
            width: 350,
            height: 50,
            child: FlatButton(
              color: Colors.deepPurple,
              onPressed: () {},
              child: Text(
                'SEND',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Card(
            margin: EdgeInsets.only(left: 20,right: 20),
            elevation: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.phone,color: Colors.deepPurple,),),
                Column(
                  children: [
                    Text('CALL CENTER',style: TextStyle(color: Colors.grey,fontSize: 14),),
                    Text('3398500279',style: TextStyle(color: Colors.deepPurple,fontSize: 14),),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Card(
            margin: EdgeInsets.only(left: 20,right: 20),
            elevation: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.mail,color: Colors.deepPurple,),),
                Column(
                  children: [
                    Text('SMS HOTLINE',style: TextStyle(color: Colors.grey,fontSize: 14),),
                    Text('89743357756',style: TextStyle(color: Colors.deepPurple,fontSize: 14),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
