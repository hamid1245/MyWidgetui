import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class UserAccount2 extends StatefulWidget {
  const UserAccount2({Key? key}) : super(key: key);

  @override
  _UserAccount2State createState() => _UserAccount2State();
}

class _UserAccount2State extends State<UserAccount2> {
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              gradient: new LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: [
                  Color.fromARGB(255, 12, 216, 229),
                  Color.fromARGB(215, 25, 172, 228),
                ],
              ),
            ),
            height: 230,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  title: AuthHeading(
                    text: 'Account Setting',
                    style: AppConstants.kwhiteheading,
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 26,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/images/man1.jpg'),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    AuthHeading(
                        text: '@coder.example',
                        style: AppConstants.kwhitetextmiddle),
                    SizedBox(
                      width: 115,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.grey,
            ),
            title: AuthHeading(
              text: 'Change mobile number',
              style: AppConstants.kblacksubtext,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.notifications_none,
              color: Colors.grey,
            ),
            title: AuthHeading(
              text: 'Notification',
              style: AppConstants.kblacksubtext,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.cloud_upload_outlined,
              color: Colors.grey,
            ),
            title: AuthHeading(
              text: 'Backup & Restore',
              style: AppConstants.kblacksubtext,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.account_balance_wallet,
              color: Colors.grey,
            ),
            title: AuthHeading(
              text: 'Deactive Account',
              style: AppConstants.kblacksubtext,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.help_outline,
              color: Colors.grey,
            ),
            title: AuthHeading(
              text: 'Help',
              style: AppConstants.kblacksubtext,
            ),
          ),
        ],
      ),
    );
  }
}
