import 'package:flutter/material.dart';

class TwitterMainWidget extends StatefulWidget {
  TwitterMainWidget({Key key}) : super(key: key);

  _TwitterMainWidgetState createState() => _TwitterMainWidgetState();
}

class _TwitterMainWidgetState extends State<TwitterMainWidget> {
  var tweetList = List.generate(100, (i) {
    return {
      "image": (i % 2 == 0
          ? 'https://geinou-tomodachi.work/wp-content/uploads/2018/10/761835_615-e1538578576474.jpg'
          : null),
      "text": (i % 2 == 0 ? "写真ありだよおおおお\nできてるねえええ" : "あいうえおおおおおおお\nかきくけこおおおおお")
    };
  });

  Widget createTwitterCard(String text, String imageURL) {
    var topBar = Row(
      children: [
        Icon(
          Icons.supervised_user_circle,
          color: Colors.grey,
          size: 50,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18),
        )
      ],
    );

    var imageView = (imageURL == null
        ? Container()
        : AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageURL,
                fit: BoxFit.fitWidth,
              ),
            ),
          ));

    var bottomBar = Row(
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
    );

    return Card(
      margin: EdgeInsets.fromLTRB(1, 1, 1, 1),
      elevation: 0,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            topBar,
            SizedBox(height: imageURL == null ? 0 : 15),
            imageView,
            SizedBox(height: 15),
            bottomBar,
            SizedBox(height: 13),
          ],
        ),
      ),
    );
  }

  Widget createPostCard() {
    var topBar = ListTile(
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
    );

    var bottomBar = ButtonTheme.bar(
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
    );

    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Card(
        margin: EdgeInsets.fromLTRB(1, 1, 1, 1),
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            topBar,
            bottomBar,
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

    var twitterBody = Container(
      color: Colors.grey[200],
      child: ListView.builder(
        itemCount: tweetList.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return createPostCard();
          }
          var tweet = tweetList[index - 1];
          return createTwitterCard(tweet["text"], tweet["image"]);
        },
      ),
    );

    return Scaffold(
      appBar: twitterAppBanner,
      body: twitterBody,
    );
  }
}
