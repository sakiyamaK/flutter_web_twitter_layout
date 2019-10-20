import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/layout/twitter_responsive.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TwitterResponsive(),
      debugShowCheckedModeBanner: false,
    );
  }
}
