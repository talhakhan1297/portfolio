import 'package:flutter/material.dart';
import 'package:portfolio/elements/button.dart';
import 'package:portfolio/style/dimensions.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      screen: Container(
        // color: Colors.red,
        width: deviceWidth(context),
        // height: deviceHeight(context) - 56,
        child: Padding(
          padding: EdgeInsets.only(
            left: deviceWidth(context) * 0.065,
            right: deviceWidth(context) * 0.025,
          ),
          child: Row(
            mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: ResponsiveWidget.isSmallScreen(context)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                      height: ResponsiveWidget.isSmallScreen(context)
                          ? deviceHeight(context) * 0.25
                          : 0),
                  Text(
                    "Hello!",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? deviceWidth(context) * 0.045
                            : deviceWidth(context) * 0.0175),
                  ),
                  SizedBox(
                      height: ResponsiveWidget.isSmallScreen(context)
                          ? deviceHeight(context) * 0.025
                          : 0),
                  Text(
                    "I'm Talha J. Khan",
                    style: Theme.of(context).textTheme.headline1.copyWith(
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? deviceWidth(context) * 0.1
                            : deviceWidth(context) * 0.0468),
                  ),
                  SizedBox(
                      height: ResponsiveWidget.isSmallScreen(context)
                          ? deviceHeight(context) * 0.02
                          : 0),
                  Text(
                    "Cross Platform Mobile App Developer",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? deviceWidth(context) * 0.045
                            : deviceWidth(context) * 0.0175),
                  ),
                  SizedBox(
                      height: ResponsiveWidget.isSmallScreen(context)
                          ? deviceHeight(context) * 0.025
                          : 0),
                  Container(
                    padding: EdgeInsets.only(top: 16),
                    width: ResponsiveWidget.isSmallScreen(context)
                        ? deviceWidth(context) * 0.9
                        : deviceWidth(context) * 0.35,
                    child: Text(
                      "I offer full range of services i.e. Design, Development and Deployment.",
                      textAlign: ResponsiveWidget.isSmallScreen(context)
                          ? TextAlign.center
                          : TextAlign.left,
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? deviceWidth(context) * 0.04
                              : deviceWidth(context) * 0.0117),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Button("Start Tour"),
                  )
                ],
              ),
              ResponsiveWidget.isLargeScreen(context) ||
                      ResponsiveWidget.isMediumScreen(context)
                  ? Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Image.asset(
                        "image.png",
                        width: deviceWidth(context) * 0.342,
                        // height: deviceHeight(context) - 72,
                        //     ? deviceHeight(context) * 0.8
                        //     : deviceHeight(context) * 0.9,
                      ),
                    )
                  : SizedBox(height: 0, width: 0)
            ],
          ),
        ),
      ),
    );
  }
}
