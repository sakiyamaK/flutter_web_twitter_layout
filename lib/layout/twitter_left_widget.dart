import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/twitter_manager.dart';

class TwitterLeftWidget extends StatefulWidget {
  TwitterLeftWidget({Key key}) : super(key: key);

  _TwitterLeftWidgetState createState() => _TwitterLeftWidgetState();
}

class _TwitterLeftWidgetState extends State<TwitterLeftWidget> {
  var lists = [
    {"icon": Icons.phone, "text": "テキスト"},
    {"icon": Icons.phone, "text": "テキスト"},
    {"icon": Icons.phone, "text": "テキスト"},
  ];

  Widget getListChildWidget(listData) {
    if (TwitterManager.shared.screenType == ScreenType.xl ||
        TwitterManager.shared.screenType == ScreenType.lg) {
      return ListTile(
          leading: Icon(Icons.phone), title: Text(listData["text"]));
    } else {
      return ListTile(trailing: Icon(Icons.phone));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: lists.length,
        itemBuilder: (context, index) {
          var listData = lists[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: getListChildWidget(listData),
          );
        });
  }
}
