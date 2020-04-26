import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/style/dimensions.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key key}) : super(key: key);

  Widget portfolioItem(BuildContext context, String label) {
    return Column(
      children: <Widget>[
        Container(
          width: deviceWidth(context) * 0.164,
          height: deviceWidth(context) * 0.2825,
          decoration: BoxDecoration(
              border: Border.all(
                  width: deviceWidth(context) * 0.00732, color: kGrey),
              borderRadius:
                  BorderRadius.circular(deviceWidth(context) * 0.0146)),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: deviceWidth(context) * 0.164,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontWeight: FontWeight.w100,
                  fontSize: deviceWidth(context) * 0.011),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print(deviceWidth(context).toString() +
        ", " +
        deviceHeight(context).toString());
    return ResponsiveWidget(
      screen: Container(
        color: kDarkNavyBlue,
        width: deviceWidth(context),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Portfolio",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline2.copyWith(
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? deviceWidth(context) * 0.1
                            : deviceWidth(context) * 0.0468),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                portfolioItem(context, "Football Score App"),
                portfolioItem(context, "Social Media App"),
                portfolioItem(context, "Flight, Holiday and Hotel Booking App"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
