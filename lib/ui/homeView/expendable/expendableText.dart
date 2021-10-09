import 'package:bottomnavigationanimation/ui/widget/authOutlineBorderTextFeild.dart';
import 'package:bottomnavigationanimation/ui/widget/expendableCard/expendableCard.dart';
import 'package:flutter/material.dart';

class ExpendableText extends StatefulWidget {
  @override
  _ExpendableTextState createState() => _ExpendableTextState();
}

class _ExpendableTextState extends State<ExpendableText> {
  bool isSelected = false;
  bool isSelectedSecond = false;
  bool isSelectedIcon = false;
  bool isSelectedIconSecond = false;

  void onIconChange() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  void onIconChangeSecond() {
    setState(() {
      isSelectedSecond = !isSelectedSecond;

    });
  }

  void onIconChangeIcon() {
    setState(() {
      isSelectedIcon = !isSelectedIcon;
    });
  } void onIconChangeIconSecond() {
    setState(() {
      isSelectedIconSecond = !isSelectedIconSecond;
    });
  }

  TextEditingController _nameContoller = TextEditingController();

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
          SizedBox(
            height: 50,
          ),
          Card(
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            elevation: 10,
            shadowColor: Colors.grey,
            child: ExpansionTile(
              // backgroundColor: Colors.grey,
              collapsedTextColor: Color(0xff5A9679),
              collapsedIconColor: Color(0xff5A9679),
              title: Text('Text'),
              trailing: IconButton(
                icon: isSelected
                    ? Icon(Icons.arrow_drop_up)
                    : Icon(Icons.arrow_drop_down),
                onPressed: onIconChange,
              ),
              children: [
                // Text('goog morninke')
                isSelected
                    ? ExpendableCard(
                        text:
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                                'Lorem Ipsum has been the industrys standard dummy text ever since the '
                                '1500s, when an unknown printer took a galley of type and scrambled it'
                                ' to make a type specimen book.',
                      )
                    : Container(),
              ],
            ),
          ),
          // input card
          Card(
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            elevation: 10,
            shadowColor: Colors.grey,
            child: ExpansionTile(
              // backgroundColor: Colors.grey,
              collapsedTextColor: Color(0xff5A9679),
              collapsedIconColor: Color(0xff5A9679),
              title: Text('Input'),
              trailing: IconButton(
                icon: isSelectedSecond
                    ? Icon(Icons.arrow_drop_up)
                    : Icon(Icons.arrow_drop_down),
                onPressed: onIconChangeSecond,
              ),
              children: [
                Container(
                  child: AuthOutlineBorderTextFeild(
                    controller: _nameContoller,
                    hintext: 'Name',
                    onPwdTap: () {},
                    isPasswordField: false,
                    visible: false, color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width - 50,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                // : Container(),
                ListTile(
                  leading: IconButton(
                      onPressed: onIconChangeIcon,
                      icon: isSelectedIcon
                          ? Icon(
                              Icons.check_box_outline_blank_rounded,
                            )
                          : Icon(
                              Icons.check_box,
                            )),
                  title: Text('Male'),
                ),
                ListTile(
                  leading: IconButton(
                      onPressed: onIconChangeIconSecond,
                      icon: isSelectedIconSecond
                          ? Icon(
                              Icons.check_box_outline_blank_rounded,
                            )
                          : Icon(
                              Icons.check_box,
                            )),
                  title: Text('Femala'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
