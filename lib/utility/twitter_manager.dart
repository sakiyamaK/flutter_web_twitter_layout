enum ScreenType { xl, lg, md, sm, xs }

class TwitterManager {
  TwitterManager._privateConstructor();
  static final TwitterManager shared = TwitterManager._privateConstructor();

  ScreenType screenType = ScreenType.xl;
}
