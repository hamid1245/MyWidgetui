import 'package:bottomnavigationanimation/ui/widget/listViewCard/newsLightHrzntlCard.dart';
import '';import 'package:bottomnavigationanimation/model/listViewModel/ListViewModel.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
class NewLightHrzntlListView extends StatefulWidget {

  @override
  _NewLightHrzntlListViewState createState() => _NewLightHrzntlListViewState();
}

class _NewLightHrzntlListViewState extends State<NewLightHrzntlListView> {
  List <ListViewModel> listData=[
    ListViewModel(
        image: 'asset/images/airpord.jpg',
        title: 'Science',
        date: '10:50 PM',
        discribtation: 'Expandable should not be \nconfused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
    ListViewModel(
        image: 'asset/images/image1.jpg',
        title: 'Entertainment',
        date: '10:50 PM',
        discribtation: 'Expandable should not be\n confused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
    ListViewModel(
        image: 'asset/images/image2.jpg',
        title: 'News',
        date: '10:50 PM',
        discribtation: 'Expandable should not be \nconfused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
    ListViewModel(
        image: 'asset/images/image3.jpg',
        title: 'Health',
        date: '10:50 PM',
        discribtation: 'Expandable should not be \nconfused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
    ListViewModel(
        image: 'asset/images/image4.jpg',
        title: 'Sport',
        date: '10:50 PM',
        discribtation: 'Expandable should not be \nconfused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
    ListViewModel(
        image: 'asset/images/man1.jpg',
        title: 'Science',
        date: '10:50 PM',
        discribtation: 'Expandable should not be \nconfused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
    ListViewModel(
        image: 'asset/images/man2.jpg',
        title: 'Entertainment',
        date: '10:50 PM',
        discribtation: 'Expandable should not be\n confused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
    ListViewModel(
        image: 'asset/images/man3.jpg',
        title: 'News',
        date: '10:50 PM',
        discribtation: 'Expandable should not be \nconfused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
    ListViewModel(
        image: 'asset/images/man4.jpg',
        title: 'Health',
        date: '10:50 PM',
        discribtation: 'Expandable should not be \nconfused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
    ListViewModel(
        image: 'asset/images/image4.jpg',
        title: 'Sport',
        date: '10:50 PM',
        discribtation: 'Expandable should not be \nconfused with ExpansionPanel.\nExpandable should not be \nconfused with ExpansionPanel',
        time: 'Mon, 1 jun 16'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News Card',style: AppConstants.ktitletext,),
        leading: Icon(Icons.menu,color: Colors.black,),
        actions: [
          Icon(Icons.search,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.more_vert,color: Colors.black,),
          SizedBox(width: 10,),
        ],
        backgroundColor: Colors.white,
      ),
      body: _getUI(context),
    );
  }
  Widget _getUI(BuildContext context){
    return ListView.builder(
        itemCount: listData.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context ,i){
          return NewsLightHrzntlCard(
            title: listData[i].title,
            image: listData[i].image,
            date: listData[i].date,
            discribtation: listData[i].discribtation,
            time: listData[i].time,
          );
        });
  }
}
