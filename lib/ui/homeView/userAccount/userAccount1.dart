import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

List accountlist = [
  'Change Password',
  'Set Address',
  'Order List',
  'Review',
  'Payment Method',
  'Last Seen product',
  'Change language',
  'Noticfication ',
  'Term and Condition',
  'Privacy Policy',
  'About',
];

class UserAccount1 extends StatefulWidget {
  @override
  _UserAccount1State createState() => _UserAccount1State();
}

class _UserAccount1State extends State<UserAccount1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 14,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('asset/images/man2.jpg'),
                radius: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  AuthHeading(
                      text: 'fakher javeed', style: AppConstants.kblackHeading),
                  AuthHeading(
                      text: 'Information Account',
                      style: AppConstants.kgraystyle),
                ],
              ),
            ],
          ),
          Container(
            height: 620,
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
          SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.logout,
                color: Colors.redAccent,
                size: 15,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
      ),
      title: AuthHeading(
        text: 'Account',
        style: AppConstants.kblackHeading,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.email, color: Colors.grey),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications, color: Colors.grey),
        ),
      ],
    );
  }
}
