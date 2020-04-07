import 'package:flutter/material.dart';
import 'package:portfolio/elements/button.dart';
import 'package:portfolio/style/dimensions.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      screen: Container(
        width: deviceWidth(context),
        height: deviceHeight(context) - 56,
        child: Padding(
          padding: EdgeInsets.only(
            left: deviceWidth(context) * 0.065,
            right: deviceWidth(context) * 0.065,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Hello!",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: deviceWidth(context) * 0.0175),
                  ),
                  Text(
                    "I'm Talha J. Khan",
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        .copyWith(fontSize: deviceWidth(context) * 0.0468),
                  ),
                  Text(
                    "Cross Platform Mobile App Developer",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: deviceWidth(context) * 0.0175),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 16),
                    width: deviceWidth(context) * 0.35,
                    child: Text(
                      "I offer full range of services i.e. Design, Development and Deployment.",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(fontSize: deviceWidth(context) * 0.0117),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Button("Start Tour"),
                  )
                ],
              ),
              Image.asset(
                //ResponsiveWidget
                "image.png",
                // width: deviceWidth(context) * 0.45,
                height: deviceHeight(context) > 700
                    ? deviceHeight(context) * 0.8
                    : deviceHeight(context) * 0.9,
              )
            ],
          ),
        ),
      ),
    );
  }
}
