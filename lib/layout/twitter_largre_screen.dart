import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/view/tiwtter_main_widget.dart';
import 'package:flutter_twitter_layout/view/twitter_left_widget.dart';
import 'package:flutter_twitter_layout/view/twitter_right_widget.dart';

class TwitterLargeScreen extends StatelessWidget {
  const TwitterLargeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 5,
            child: TwitterLeftWidget(),
          ),
          Expanded(
            flex: 10,
            child: TwitterMainWidget(),
          ),
          Expanded(
            flex: 6,
            child: TwitterRightWidget(),
          ),
        ],
      ),
    );
  }
}
