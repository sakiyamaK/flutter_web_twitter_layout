import 'package:flutter/material.dart';

class TwitterCommonPartsManager {
  TwitterCommonPartsManager._privateConstructor();
  static final TwitterCommonPartsManager shared =
      TwitterCommonPartsManager._privateConstructor();

  //webだとdividerが動かないため
  Widget border = Container(
    height: 1,
    color: Colors.grey,
  );
}
