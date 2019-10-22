import 'package:flutter/material.dart';

class TwitterMainWidget extends StatefulWidget {
  TwitterMainWidget({Key key}) : super(key: key);

  _TwitterMainWidgetState createState() => _TwitterMainWidgetState();
}

class _TwitterMainWidgetState extends State<TwitterMainWidget> {
  var tweetList = List.generate(100, (i) => "aaaaaaaaaaaaaaaa");

  var border = Container(
    height: 1,
    color: Colors.grey,
  );

  Widget createTwitterCard(String text) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Text(text),
      ),
      border,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    var twitterAppBanner = AppBar(
      title: Text("ホーム"),
      actions: [
        IconButton(
          icon: Icon(Icons.star_border),
          onPressed: () {},
        ),
      ],
    );

    var twitterBody = ListView.builder(
      itemCount: tweetList.length,
      itemBuilder: (context, index) {
        var tweet = tweetList[index];
        return createTwitterCard(tweet);
      },
    );

    return Scaffold(
      appBar: twitterAppBanner,
      body: twitterBody,
    );
  }
}
