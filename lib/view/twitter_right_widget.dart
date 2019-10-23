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

    var boldStyle = TextStyle(
      fontSize: 18.0,
      color: Colors.grey[250],
      fontWeight: FontWeight.w900,
    );

    var subtextStyle = TextStyle(
      fontSize: 12.0,
      color: Colors.blueGrey,
    );

    Widget createRecommendTagRow({String title, String subtitle}) {
      if (subtitle != null) {
        return Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10,
              ),
              Text(
                title,
                style: boldStyle,
              ),
              Container(
                height: 5,
              ),
              Text(
                subtitle,
                style: subtextStyle,
              ),
            ],
          ),
        );
      }
      return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10,
            ),
            Text(
              title,
              style: boldStyle,
            ),
          ],
        ),
      );
    }

    Widget createRecommendUserRow(
        {String displayName, String userName, bool isFollowed}) {
      return Row(
        children: [
          Expanded(
            child: ListTile(
              title: Text(
                displayName,
                style: boldStyle,
              ),
              subtitle: Text(userName),
              leading: Icon(
                Icons.restaurant_menu,
              ),
            ),
          ),
          FlatButton(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            color: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Text(
              "フォロー",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () => {},
          ),
        ],
      );
    }

    Widget nextButton = Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "さらに表示",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.blue,
        ),
      ),
    );

    Widget searchBar = Container(
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

    Widget recomendTrendBox = Container(
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
                    style: boldStyle,
                  ),
                ),
                Icon(Icons.gps_not_fixed)
              ],
            ),
          ),
          TwitterCommonPartsManager.shared.border,
          createRecommendTagRow(
              title: "#終わらないドラクエ",
              subtitle:
                  "『DQX  いばらの巫女と滅びの神 オンライン』本日発売！CM公開中！\nドラゴンクエスト宣伝担当によるプロモーション"),
          TwitterCommonPartsManager.shared.border,
          createRecommendTagRow(title: "#童貞を卒業する年齢"),
          TwitterCommonPartsManager.shared.border,
          createRecommendTagRow(title: "#絶対に今すぐやめておけ"),
          TwitterCommonPartsManager.shared.border,
          createRecommendTagRow(title: "徳井さん"),
          TwitterCommonPartsManager.shared.border,
          nextButton
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
              style: boldStyle,
            ),
          ),
          TwitterCommonPartsManager.shared.border,
          createRecommendUserRow(displayName: "aaaaaa", userName: "@aaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendUserRow(displayName: "aaaaaa", userName: "@aaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendUserRow(displayName: "aaaaaa", userName: "@aaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendUserRow(displayName: "aaaaaa", userName: "@aaaaa"),
          TwitterCommonPartsManager.shared.border,
          createRecommendUserRow(displayName: "aaaaaa", userName: "@aaaaa"),
          TwitterCommonPartsManager.shared.border,
          nextButton,
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
