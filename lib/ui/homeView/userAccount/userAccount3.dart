import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class UserAccount3 extends StatefulWidget {
  const UserAccount3({Key? key}) : super(key: key);

  @override
  _UserAccount3State createState() => _UserAccount3State();
}

class _UserAccount3State extends State<UserAccount3> {
  List accountlist = [
    'Change Password',
    'Set Address',
    'Back Account',
    'Review',
    'Sign In With Touch ID',
    'Document',
    'Change language',
    'Noticfication ',
    'Term and Condition',
    'Privacy Policy',
    'About',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: AuthHeading(
          text: 'User Account ',
          style: AppConstants.kblacksubheading,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('asset/images/man1.jpg'),
            ),
          ),
        ],
      ),
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.2,
            child: ListView.builder(
                itemCount: accountlist.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(accountlist[i]),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
