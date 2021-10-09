import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class AboutUS1 extends StatefulWidget {
  const AboutUS1({Key? key}) : super(key: key);

  @override
  _AboutUS1State createState() => _AboutUS1State();
}

class _AboutUS1State extends State<AboutUS1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
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
            )),
        title: AuthHeading(
          text: 'About App ',
          style: AppConstants.kwhitetextmiddle,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthHeading(
            text: 'For Example  App',
            style: AppConstants.kwhitetextmiddle,
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            color: Colors.white,
            height: 2,
            width: 130,
          ),
          ListTile(
            title: AuthHeading(
              text: 'version',
              style: AppConstants.ksubwhittext,
            ),
            subtitle: AuthHeading(
              text: '0.5.0.1.2',
              style: AppConstants.kwhitetextmiddle,
            ),
          ),
          ListTile(
            title: AuthHeading(
              text: 'Last update',
              style: AppConstants.ksubwhittext,
            ),
            subtitle: AuthHeading(
              text: '12 march 2020',
              style: AppConstants.kwhitetextmiddle,
            ),
          ),
          AuthHeading(
            text:
                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
            style: AppConstants.ksubwhittext,
          ),
          SizedBox(height: 20,),
          AuthHeading(
            text: 'Term and Services',
            style: AppConstants.ksubwhittext,
          ),
        ],
      ),
    );
  }
}
