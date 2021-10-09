import 'package:bottomnavigationanimation/ui/widget/appButton.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(color: Colors.grey),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: Colors.white),
                elevation: 0.0,
                brightness: Brightness.dark,
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.save),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Article',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.favorite_border,
              size: 20,
              color: Colors.grey,
            ),
            AuthHeading(text: '1235', style: AppConstants.ksubtext),
            Icon(
              Icons.comment_bank_outlined,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(
              width: 3,
            ),
            AuthHeading(text: '1575', style: AppConstants.ksubtext),
            Icon(
              Icons.share,
              size: 20,
              color: Colors.grey,
            ),
            AuthHeading(text: '195', style: AppConstants.ksubtext),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: AuthHeading(
              text:
                  'The looming food crisis starts from three primary causes: The global ‘just-in-time’ i'
                  'ndustrial food and supermarket system is not fit for purpose in guaranteeing food security. It is all about money, and not'
                  ' about human safety or nutrition. Its links are fragile and any of them can break, precipitating chaos – especially in big '
                  'cities.some startling predictions: ',
              style: AppConstants.kblacksubtext),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.03,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.location_on_outlined),
            ),
            title: AuthHeading(
              text: 'fakher javeed',
              style: AppConstants.kblacksubtext,
            ),
            subtitle: AuthHeading(
              text: '8 minutes ago',
              style: AppConstants.ksubtext,
            ),
            trailing: FlatButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              onPressed: () {},
              child: Text('Follow',style: TextStyle(color: Colors.red),),
            ),
          ),
        )
      ],
    );
  }
}
