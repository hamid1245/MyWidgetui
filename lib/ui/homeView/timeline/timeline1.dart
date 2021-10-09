import 'package:bottomnavigationanimation/ui/widget/authHeading.dart';
import 'package:bottomnavigationanimation/ui/widget/containerImage/containerImage1.dart';
import 'package:bottomnavigationanimation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:timeline_widget/timeline_widget.dart';

class TimeLine1 extends StatefulWidget {
  TimeLine1({required this.title});

  final String title;

  @override
  _TimeLine1State createState() => _TimeLine1State();
}

class _TimeLine1State extends State<TimeLine1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )),
                Tab(
                    icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
                Tab(
                    icon: Icon(
                  Icons.vertical_align_top,
                  color: Colors.black,
                )),
                Tab(
                    icon: Icon(
                  Icons.vertical_align_bottom,
                  color: Colors.black,
                )),
              ],
            ),
            title: AuthHeading(
              text: widget.title,
              style: AppConstants.kblackHeading,
            ),
            centerTitle: true,
            //Text(widget.title,style: Sty,),
          ),
          body: Container(
            // color: Color.fromARGB(255, 111, 0, 255),
            child: TabBarView(
              children: [
                _timelineviewRight(),
                _timelineviewLeft(),
                _timelineviewTop(),
                _timelineviewBottom()
              ],
            ),
          )),
    );
  }

  Widget _timelineviewLeft() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
      child: TimelineView(
        scrollController:
            ScrollController(initialScrollOffset: 0, keepScrollOffset: true),
        align: TimelineAlign.leftAlign,
        lineWidth: 4,
        lineColor: Colors.deepOrange,
        imageBorderColor: Colors.deepOrange,
        image: [
          ContainerImage1(image: 'asset/images/breakfast.png',),
          ContainerImage1(image: 'asset/images/lunch.png',),
          ContainerImage1(image: 'asset/images/dinner.png',),
          ContainerImage1(image: 'asset/images/breakfast.png',),
          ContainerImage1(image: 'asset/images/lunch.png',),
          ContainerImage1(image: 'asset/images/dinner.png',),
        ],
        height: 150,
        width: MediaQuery.of(context).size.width,
        imageHeight: 50,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: _widgetWeather(20, 71, 31)),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: _widgetWeather(15, 75, 55)),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: _widgetWeather(25, 73, 30)),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: _widgetWeather(22, 65, 35)),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: _widgetWeather(21, 55, 32)),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: _widgetWeather(20, 65, 35)),
        ],
      ),
    );
  }

  Widget _timelineviewTop() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: TimelineView(
        scrollDirection: Axis.horizontal,
        scrollController:
            ScrollController(initialScrollOffset: 0, keepScrollOffset: true),
        align: TimelineAlign.topAlign,
        lineWidth: 4,
        lineColor: Colors.deepOrange,
        imageBorderColor: Colors.deepOrange,
        image: [
          ContainerImage1(image: 'asset/images/breakfast.png',),
          ContainerImage1(image: 'asset/images/lunch.png',),
          ContainerImage1(image: 'asset/images/dinner.png',),
          ContainerImage1(image: 'asset/images/breakfast.png',),
          ContainerImage1(image: 'asset/images/lunch.png',),
          ContainerImage1(image: 'asset/images/dinner.png',),
        ],
        height: MediaQuery.of(context).size.width,
        width: 200,
        imageHeight: 50,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(20, 71, 31)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(15, 75, 55)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(25, 73, 30)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(22, 65, 35)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(21, 55, 32)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(20, 65, 35)),
        ],
      ),
    );
  }

  Widget _timelineviewBottom() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: TimelineView(
        scrollDirection: Axis.horizontal,
        scrollController:
            ScrollController(initialScrollOffset: 0, keepScrollOffset: true),
        align: TimelineAlign.bottomAlign,
        lineWidth: 4,
        lineColor: Colors.deepOrange,
        imageBorderColor: Colors.deepOrange,
        image: [
          ContainerImage1(image: 'asset/images/breakfast.png',),
          ContainerImage1(image: 'asset/images/lunch.png',),
          ContainerImage1(image: 'asset/images/dinner.png',),
          ContainerImage1(image: 'asset/images/breakfast.png',),
          ContainerImage1(image: 'asset/images/lunch.png',),
          ContainerImage1(image: 'asset/images/dinner.png',),
        ],
        height: MediaQuery.of(context).size.width,
        width: 200,
        imageHeight: 50,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(20, 71, 31)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(15, 75, 55)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(25, 73, 30)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(22, 65, 35)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(21, 55, 32)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(20, 65, 35)),
        ],
      ),
    );
  }

  Widget _timelineviewRight() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
      child: TimelineView(
        scrollDirection: Axis.vertical,
        scrollController:
            ScrollController(initialScrollOffset: 0, keepScrollOffset: true),
        align: TimelineAlign.rightAlign,
        lineWidth: 4,
        lineColor: Colors.deepOrange,
        imageBorderColor: Colors.deepOrange,
        image: [
          ContainerImage1(image: 'asset/images/breakfast.png',),
          ContainerImage1(image: 'asset/images/lunch.png',),
          ContainerImage1(image: 'asset/images/dinner.png',),
          ContainerImage1(image: 'asset/images/breakfast.png',),
          ContainerImage1(image: 'asset/images/lunch.png',),
          ContainerImage1(image: 'asset/images/dinner.png',),
        ],
        height: 150,
        width: MediaQuery.of(context).size.width,
        imageHeight: 50,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(20, 71, 31)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(15, 75, 55)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(25, 73, 30)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(22, 65, 35)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(21, 55, 32)),
          Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: _widgetWeather(20, 65, 35)),
        ],
      ),
    );
  }

  Widget _widgetWeather(int temp, int humidity, int wind) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.25,
      ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Degrees: $temp°C",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          Text(
            "Humidity: $humidity%",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          Text(
            "Wind: $wind/h",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
