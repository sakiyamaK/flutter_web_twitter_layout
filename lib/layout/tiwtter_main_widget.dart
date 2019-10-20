import 'package:flutter/material.dart';

class TwitterMainWidget extends StatefulWidget {
  TwitterMainWidget({Key key}) : super(key: key);

  _TwitterMainWidgetState createState() => _TwitterMainWidgetState();
}

class _TwitterMainWidgetState extends State<TwitterMainWidget> {
  var tweetList = List.generate(100, (i) => "aaaaaaaaaaaaaaaa");

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
        return Card(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Text(tweet),
          ),
        );
      },
    );

    return Scaffold(
      appBar: twitterAppBanner,
      body: twitterBody,
    );
  }
}
