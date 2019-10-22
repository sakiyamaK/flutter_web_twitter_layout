import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/utility/twitter_manager.dart';

class TwitterMainWidget extends StatefulWidget {
  TwitterMainWidget({Key key}) : super(key: key);

  _TwitterMainWidgetState createState() => _TwitterMainWidgetState();
}

class _TwitterMainWidgetState extends State<TwitterMainWidget> {
  var tweetList = List.generate(100, (i) => "aaaaaaaaaaaaaaaa");

  Widget createTwitterCard(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Card(
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                Icons.supervised_user_circle,
                size: 50,
              ),
              title: Text(text),
            ),
            Container(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.lightBlue,
                    size: 20,
                  ),
                  Icon(
                    Icons.reply_all,
                    color: Colors.lightBlue,
                    size: 20,
                  ),
                  Icon(
                    Icons.insert_emoticon,
                    color: Colors.lightBlue,
                    size: 20,
                  ),
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.lightBlue,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createPostCard() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
      child: Card(
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                Icons.supervised_user_circle,
                size: 50,
              ),
              title: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "いまどうしてる？",
                ),
              ),
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.lightBlue,
                    size: 40,
                  ),
                  FlatButton(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    color: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      "ツイート",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var twitterAppBanner = AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "ホーム",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.star_border,
            color: Colors.lightBlue,
          ),
          onPressed: () {},
        ),
      ],
    );

    var twitterBody = ListView.builder(
      itemCount: tweetList.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return createPostCard();
        }
        var tweet = tweetList[index - 1];
        return createTwitterCard(tweet);
      },
    );

    return Scaffold(
      appBar: twitterAppBanner,
      body: twitterBody,
    );
  }
}
