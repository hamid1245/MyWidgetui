import 'package:bottomnavigationanimation/model/setttingModel/iphonSettingModel.dart';
import 'package:bottomnavigationanimation/ui/widget/SettingCustomCard/iphoneSettingCustomCard.dart';
import 'package:flutter/material.dart';
class IphoneSetting extends StatefulWidget {

  @override
  _IphoneSettingState createState() => _IphoneSettingState();
}

class _IphoneSettingState extends State<IphoneSetting> {
  List <IPhoneSettingModel> listData=[
    IPhoneSettingModel(color: Colors.orange,icon: Icons.airplanemode_active,text: 'airplane Mode',trallingicon: Icons.arrow_forward_ios,trallingtext: ''),
    IPhoneSettingModel(color: Colors.redAccent,icon: Icons.wifi,text: 'Wifi',trallingicon: Icons.arrow_forward_ios,trallingtext: 'Off '),
    IPhoneSettingModel(color: Colors.blue,icon: Icons.bluetooth,text: 'Bluetooth',trallingicon: Icons.arrow_forward_ios,trallingtext: 'On'),
    IPhoneSettingModel(color: Colors.yellowAccent,icon: Icons.signal_cellular_alt_rounded,text: 'Cellular',trallingicon: Icons.arrow_forward_ios,trallingtext: ''),
    IPhoneSettingModel(color: Colors.greenAccent,icon: Icons.link,text: 'Personal Hotspot',trallingicon: Icons.arrow_forward_ios,trallingtext: 'Off'),
    IPhoneSettingModel(color: Colors.redAccent,icon: Icons.vpn_key,text: 'VPN',trallingicon: Icons.arrow_forward_ios,trallingtext: 'Off'),
    IPhoneSettingModel(color: Colors.white,icon: Icons.notifications,text: 'Notification',trallingicon: Icons.arrow_forward_ios,trallingtext: 'On'),
    IPhoneSettingModel(color: Colors.pinkAccent,icon: Icons.control_point_duplicate,text: 'Control Center',trallingicon: Icons.arrow_forward_ios,trallingtext: ''),
    IPhoneSettingModel(color: Colors.purpleAccent,icon: Icons.settings,text: 'Setting',trallingicon: Icons.arrow_forward_ios,trallingtext: ''),
    IPhoneSettingModel(color: Colors.blue,icon: Icons.confirmation_num,text: 'General',trallingicon: Icons.arrow_forward_ios,trallingtext: 'Off '),
    IPhoneSettingModel(color: Colors.grey,icon: Icons.do_disturb_outlined,text: 'Do Not Disturb',trallingicon: Icons.arrow_forward_ios,trallingtext: 'On'),
    IPhoneSettingModel(color: Colors.lime,icon: Icons.screen_lock_rotation_outlined,text: 'Screen Time',trallingicon: Icons.arrow_forward_ios,trallingtext: ''),
    IPhoneSettingModel(color: Colors.blueAccent,icon: Icons.surround_sound,text: 'Sound & Haptics',trallingicon: Icons.arrow_forward_ios,trallingtext: 'Off'),
    IPhoneSettingModel(color: Colors.blueGrey,icon: Icons.privacy_tip,text: 'Privacy',trallingicon: Icons.arrow_forward_ios,trallingtext: 'Off'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getUI(context),
    );
  }
  Widget _getUI(BuildContext context){
    return ListView.builder(
        itemCount: listData.length,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context ,i){
          return IphoneSettingCustomCard(
           icon:listData[i].icon,
            color: listData[i].color,
            text: listData[i].text,
            trallingicon: listData[i].trallingicon,
            trallingtext: listData[i].trallingtext,
          );
        });
  }
}
