import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/layout/tiwtter_main_widget.dart';
import 'package:flutter_twitter_layout/layout/twitter_left_widget.dart';

class TwitterSmallScreen extends StatelessWidget {
  const TwitterSmallScreen({Key key}) : super(key: key);

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
        flex: 1,
        child: Container(),
      ),
    ]));
  }
}
