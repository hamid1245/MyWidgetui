import 'package:bottomnavigationanimation/ui/homeView/expendable/expendableText.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/drawerCard/drawerCustomCard.dart';
import 'package:bottomnavigationanimation/ui/widget/expendableCard/expendableCard.dart';
import 'package:bottomnavigationanimation/ui/widget/expendableCard/expendableCustomCard.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoiceExpendable extends StatefulWidget {
  @override
  _InvoiceExpendableState createState() => _InvoiceExpendableState();
}

class _InvoiceExpendableState extends State<InvoiceExpendable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return Wrap(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff00887A),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppConstants.whiteText,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: AppConstants.whiteText,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AuthHeading(
                            text: '\$ 5060.67',
                            style: AppConstants.kwhiteheading),
                        AuthHeading(
                            text: 'Total price ',
                            style: AppConstants.ksubwhittext),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                AuthHeading(
                                    text: 'FNU23643',
                                    style: AppConstants.kwhiteheading),
                                AuthHeading(
                                    text: 'Purchase Code',
                                    style: AppConstants.ksubwhittext),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: AppConstants.whiteText,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.collections_bookmark_outlined,
                                  color: Color(0xff00887A),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () {},
              ),
              title: AuthHeading(
                text: 'Invoice Date',
                style: AppConstants.kgraystyle,
              ),
              subtitle: AuthHeading(
                text: '4:06 PM, 22 March 2020',
                style: AppConstants.kblackHeading,
              ),
            ),
            ExpendableCustomCard(
              children: [
                DrawerCustomCard(
                  text: 'Web Design',
                  trallingText: '\$ 54.60',
                ),
                DrawerCustomCard(
                  text: 'E Design',
                  trallingText: '\$ 954.60',
                ),
                DrawerCustomCard(
                  text: 'Hostine Plan',
                  trallingText: '\$ 554.60',
                ),
                DrawerCustomCard(
                  text: 'Total',
                  trallingText: '\$ 354.60',
                ),
              ],
              text: 'Items (S)',
              icon: Icons.list_alt,
              onpressed: () {},
              trallingIcon: Icons.arrow_drop_down,
            ),
            ExpendableCustomCard(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: ExpendableCard(
                    text:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                        'Lorem Ipsum has been the industrys standard dummy text ever since the '
                        '1500s, when an unknown printer took a galley of type and scrambled it'
                        ' to make a type specimen book.',
                  ),
                )
              ],
              trallingIcon: Icons.arrow_drop_down,
              text: 'Description',
              icon: Icons.note_add_rounded,
            ),
            ExpendableCustomCard(
              children: [
                AuthHeading(
                  text: 'fakher javeed',
                  style: AppConstants.kgraystyle,
                ),
                AuthHeading(
                  text: '(0092) 332448596',
                  style: AppConstants.kgraystyle,
                ),
                AuthHeading(
                  text: '32 software house near the pizza hut',
                  style: AppConstants.kgraystyle,
                ),
              ],
              icon: Icons.add_location_rounded,
              trallingIcon: Icons.arrow_drop_down,
              text: 'Address',
            ),
          ],
        ),
      ],
    );
  }
}
