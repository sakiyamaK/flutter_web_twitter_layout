import 'package:flutter/material.dart';
import 'package:flutter_twitter_layout/layout/twitter_largre_screen.dart';
import 'package:flutter_twitter_layout/layout/twitter_middle_screen.dart';
import 'package:flutter_twitter_layout/layout/twitter_small_screen.dart';
import 'package:flutter_twitter_layout/utility/twitter_manager.dart';

class TwitterResponsive extends StatefulWidget {
  TwitterResponsive({Key key}) : super(key: key);

  _TwitterResponsiveState createState() => _TwitterResponsiveState();
}

class _TwitterResponsiveState extends State<TwitterResponsive> {
  get screenType {
    var width = MediaQuery.of(context).size.width;
    if (width > 1200) {
      return ScreenType.xl;
    } else if (width > 1064) {
      return ScreenType.lg;
    } else if (width > 768) {
      return ScreenType.md;
    } else if (width > 544) {
      return ScreenType.sm;
    } else {
      return ScreenType.xs;
    }
  }

  @override
  Widget build(BuildContext context) {
    TwitterManager.shared.screenType = this.screenType;
    switch (this.screenType) {
      case ScreenType.xl:
      case ScreenType.lg:
        return TwitterLargeScreen();
        break;
      case ScreenType.md:
        return TwitterMiddleScreen();
        break;
      case ScreenType.sm:
      case ScreenType.xs:
        return TwitterSmallScreen();
        break;
      default:
        break;
    }
  }
}
