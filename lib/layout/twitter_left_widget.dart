import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/twitter_manager.dart';

class TwitterLeftWidget extends StatefulWidget {
  TwitterLeftWidget({Key key}) : super(key: key);

  _TwitterLeftWidgetState createState() => _TwitterLeftWidgetState();
}

class _TwitterLeftWidgetState extends State<TwitterLeftWidget> {
  var lists = [
    {"icon": Icons.phone, "text": ""},
    {"icon": Icons.home, "text": "ホーム"},
    {"icon": Icons.tag_faces, "text": "話題を検索"},
    {"icon": Icons.add_alert, "text": "通知"},
    {"icon": Icons.mail, "text": "メッセージ"},
    {"icon": Icons.bookmark, "text": "ブックマーク"},
    {"icon": Icons.featured_play_list, "text": "リスト"},
    {"icon": Icons.person, "text": "プロフィール"},
    {"icon": Icons.more_horiz, "text": "もっと見る"},
  ];

  Widget createListChildWidget(listData) {
    if (TwitterManager.shared.screenType == ScreenType.xl ||
        TwitterManager.shared.screenType == ScreenType.lg) {
      return ListTile(
          leading: Icon(listData["icon"]), title: Text(listData["text"]));
    } else {
      return ListTile(trailing: Icon(listData["icon"]));
    }
  }

  Widget createTweetButton() {
    if (TwitterManager.shared.screenType == ScreenType.xl ||
        TwitterManager.shared.screenType == ScreenType.lg) {
      return FlatButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        color: Colors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Text(
          "ツイート",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () => {},
      );
    } else {
      return IconButton(
        onPressed: () => {},
        icon: Icon(Icons.add),
        color: Colors.lightBlue,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: ListView.builder(
        itemCount: lists.length + 1,
        itemBuilder: (context, index) {
          if (index < lists.length) {
            var listData = lists[index];
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: createListChildWidget(listData),
            );
          }
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: createTweetButton(),
          );
        },
      ),
    );
  }
}
