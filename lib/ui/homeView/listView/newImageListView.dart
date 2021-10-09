import 'package:bottomnavigationanimation/model/listViewModel/ListViewModel.dart';
import 'package:bottomnavigationanimation/navigationHelper/navigationHelper.dart';
import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/listViewCard/newCardList.dart';
import 'package:bottomnavigationanimation/ui/widget/listViewCard/newImageCustomWidget.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';

class NewsImageListView extends StatefulWidget {
  @override
  _NewsImageListViewState createState() => _NewsImageListViewState();
}

class _NewsImageListViewState extends State<NewsImageListView> {
  List<ListViewModel> listData = [
    ListViewModel(
        image: 'asset/images/airpord.jpg',
        title: 'Science',
        date: '10:50 PM',
        discribtation: 'Expandable should not be confused with ExpansionPanel.'
            ' ExpansionPanel, which is a part of Flutter material library,',
        time: 'Mon, 1 jun 16'),
    ListViewModel(
        image: 'asset/images/image1.jpg',
        title: 'Entertainment',
        date: '10:50 PM',
        discribtation: 'Expandable should not be confused with ExpansionPanel.'
            ' ExpansionPanel, which is a part of Flutter material library, ',
        time: 'Mon, 1 jun 16'),
    ListViewModel(
        image: 'asset/images/image2.jpg',
        title: 'News',
        date: '10:50 PM',
        discribtation: 'Expandable should not be confused with ExpansionPanel. '
            'ExpansionPanel, which is a part of Flutter material library, ',
        time: 'Mon, 1 jun 16'),
    ListViewModel(
        image: 'asset/images/image3.jpg',
        title: 'Health',
        date: '10:50 PM',
        discribtation:
            'Expandable should not be confused with ExpansionPanel. ExpansionPanel, which is a part of Flutter material library,',
        time: 'Mon, 1 jun 16'),
    ListViewModel(
        image: 'asset/images/man2.jpg',
        title: 'Sport',
        date: '10:50 PM',
        discribtation:
            'Expandable should not be confused with ExpansionPanel.ExpansionPanel, which is a part of Flutter material library,',
        time: 'Mon, 1 jun 16'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Card'),
        leading: Icon(
          Icons.menu,
        ),
        actions: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: _getUI(context),
    );
  }

  Widget _getUI(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: listData.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              NavigationHelper.pushRoute(
                  context,
                  _showDilogFunction(context, listData[i].image,
                      listData[i].title, listData[i].date, listData[i].time));
            },
            child: NewsImageCustomWidget(
              title: listData[i].title,
              image: listData[i].image,
              date: listData[i].date,
              discribtation: listData[i].discribtation,
              time: listData[i].time,
            ),
          );
        });
  }
}

_showDilogFunction(context, image, title, date, time) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppConstants.whiteText,
              ),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                  ),
                  AppConstants.ksizedbos,
                  Text(title),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AuthHeading(text: date, style: AppConstants.ksubtext),
                        AuthHeading(text: time, style: AppConstants.ksubtext),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
