import 'package:flutter/material.dart';

class TwitterRightWidget extends StatefulWidget {
  TwitterRightWidget({Key key}) : super(key: key);

  _TwitterRightWidgetState createState() => _TwitterRightWidgetState();
}

class _TwitterRightWidgetState extends State<TwitterRightWidget> {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 20.0,
    );

    var searchBar = Container(
        height: 45,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey),
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

    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            searchBar,
            Container(
              height: 50,
            ),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "おすすめトレンド",
                    style: textStyle,
                  ),
                  Text(
                    "aaaaa",
                    style: textStyle,
                  ),
                  Text(
                    "bbbbbbb",
                    style: textStyle,
                  ),
                  Text(
                    "cccccccc",
                    style: textStyle,
                  ),
                  Text(
                    "dddddd",
                    style: textStyle,
                  ),
                  Text(
                    "さらに表示",
                    style: textStyle,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "おすすめユーザ",
                    style: textStyle,
                  ),
                  Text(
                    "aaaaa",
                    style: textStyle,
                  ),
                  Text(
                    "bbbbbbb",
                    style: textStyle,
                  ),
                  Text(
                    "cccccccc",
                    style: textStyle,
                  ),
                  Text(
                    "dddddd",
                    style: textStyle,
                  ),
                  Text(
                    "さらに表示",
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}