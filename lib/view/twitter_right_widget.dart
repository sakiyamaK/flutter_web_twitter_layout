import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/utility/twitter_manager.dart';

class TwitterRightWidget extends StatefulWidget {
  TwitterRightWidget({Key key}) : super(key: key);

  _TwitterRightWidgetState createState() => _TwitterRightWidgetState();
}

class _TwitterRightWidgetState extends State<TwitterRightWidget> {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 20.0,
      color: Colors.grey[250],
    );

    Widget createRecommendRow(title) {
      return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          title,
          style: textStyle,
        ),
      );
    }

    var searchBar = Container(
        height: 45,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Icon(Icons.search),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "キーワード検索",
                  style: textStyle,
                ),
              )
            ],
          ),
        ));

    var recomendTrendBox = Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "おすすめトレンド",
                    style: textStyle,
                  ),
                ),
                Icon(Icons.gps_not_fixed)
              ],
            ),
          ),
          TwitterCommonPartsManager.shared.border,
          createRecommendRow("aaaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendRow("aaaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendRow("aaaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendRow("aaaaaa"),
          TwitterCommonPartsManager.shared.border,
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "さらに表示",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );

    var recomendUserBox = Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey[200]),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Text(
              "おすすめユーザ",
              style: textStyle,
            ),
          ),
          TwitterCommonPartsManager.shared.border,
          createRecommendRow("aaaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendRow("aaaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendRow("aaaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendRow("aaaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendRow("aaaaaa"),
        ],
      ),
    );

    var others = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 8.0,
            runSpacing: 0.0,
            direction: Axis.horizontal,
            children: [
              Text("利用規約"),
              Text("プライバシーポリシー"),
              Text("Cookie"),
              Text("広告情報"),
              Text("もっと見る"),
              Text("©︎2019 Test.inc"),
            ],
          ),
        ),
      ],
    );

    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
      child: Column(
        children: [
          searchBar,
          Container(
            height: 50,
          ),
          recomendTrendBox,
          Container(
            height: 50,
          ),
          recomendUserBox,
          Container(
            height: 50,
          ),
          others
        ],
      ),
    );
  }
}
