import 'package:flutter/material.dart';
class DilogCustom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        children: [
          Text('Goggle service Access ?'),
          // Image(image: AssetImage('asset/images/man1.jpg'),),
        ],
      ),
      content: Text('If you are agree the plz press agree,if not agree the click cancel'),
      actions: [
        FlatButton(onPressed: (){Navigator.pop(context);}, child: Text('Agree',),),
        FlatButton(onPressed: (){Navigator.pop(context);}, child: Text('cancel',style: TextStyle(color: Colors.red),),),
      ],
    );
  }
}
