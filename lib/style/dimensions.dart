import 'package:flutter/material.dart';

double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

class ResponsiveWidget extends StatelessWidget {
  final Widget screen;

  const ResponsiveWidget({
    Key key,
    @required this.screen,
  }) : super(key: key);

  static double aspectRatio(BuildContext context) {
    return MediaQuery.of(context).size.width /
        MediaQuery.of(context).size.height;
  }

  static bool isLargeScreen(BuildContext context) {
    print(aspectRatio(context).toString());
    return aspectRatio(context) >= 1.4;
  }

  static bool isMediumScreen(BuildContext context) {
    return aspectRatio(context) < 1.4 && aspectRatio(context) > 0.6;
  }

  static bool isSmallScreen(BuildContext context) {
    return aspectRatio(context) <= 0.6;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return screen;
      },
    );
  }
}
