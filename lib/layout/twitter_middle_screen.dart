import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/view/tiwtter_main_widget.dart';
import 'package:flutter_twitter_layout/view/twitter_left_widget.dart';
import 'package:flutter_twitter_layout/view/twitter_right_widget.dart';

class TwitterMiddleScreen extends StatelessWidget {
  const TwitterMiddleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
        flex: 1,
        child: TwitterLeftWidget(),
      ),
      Expanded(
        flex: 5,
        child: TwitterMainWidget(),
      ),
      Expanded(
        flex: 3,
        child: TwitterRightWidget(),
      ),
    ]));
  }
}
