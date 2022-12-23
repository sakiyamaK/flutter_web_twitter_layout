import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/utility/twitter_manager.dart';
import 'package:flutter_twitter_layout/utility/twitter_common_parts_manager.dart';

class TwitterLeftWidget extends StatefulWidget {
  TwitterLeftWidget({Key key}) : super(key: key);

  _TwitterLeftWidgetState createState() => _TwitterLeftWidgetState();
}

class _TwitterLeftWidgetState extends State<TwitterLeftWidget> {
  var lists = [
    {"icon": Icons.account_balance, "text": ""},
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
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            listData["icon"],
            size: 35,
            color: Colors.lightBlue,
          ),
          SizedBox(width: 20),
          Text(
            listData["text"],
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      );
    } else {
      return Icon(
        listData["icon"],
        size: 35,
        color: Colors.lightBlue,
      );
    }
  }

  Widget createTweetButton() {
    if (TwitterManager.shared.screenType == ScreenType.xl ||
        TwitterManager.shared.screenType == ScreenType.lg) {
      return TextButton(
        // padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        // color: Colors.lightBlue,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(50.0),
        // ),
        child: Text(
          "ツイート",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: () => {},
      );
    } else {
      return ElevatedButton(
        child: Text(
          "+",
          style: TextStyle(color: Colors.white),
        ),
        // color: Colors.lightBlue,
        // shape: CircleBorder(
        //   side: BorderSide(
        //     color: Colors.lightBlue,
        //     width: 1.0,
        //     style: BorderStyle.solid,
        //   ),
        // ),
        onPressed: () {},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
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
