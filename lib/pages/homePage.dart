import 'package:flutter/material.dart';
import 'package:portfolio/elements/button.dart';
import 'package:portfolio/pages/portfolio.dart';
import 'package:portfolio/pages/profile.dart';
import 'package:portfolio/style/dimensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  Widget _buildAppbar(BuildContext context) {
    return AppBar(
      title: ResponsiveWidget.isSmallScreen(context)
          ? Text("")
          : Padding(
              padding: EdgeInsets.only(left: deviceWidth(context) * 0.05),
              child: Text("Talha Javed Khan",
                  style: Theme.of(context).textTheme.subtitle1),
            ),
      actions: <Widget>[
        Padding(
          padding: ResponsiveWidget.isSmallScreen(context)
              ? EdgeInsets.only(right: 0)
              : EdgeInsets.only(right: deviceWidth(context) * 0.025),
          child: FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            child: Text(
              "About",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: ResponsiveWidget.isSmallScreen(context)
                      ? deviceHeight(context) * 0.02
                      : 14),
            ),
          ),
        ),
        Padding(
          padding: ResponsiveWidget.isSmallScreen(context)
              ? EdgeInsets.only(right: 0)
              : EdgeInsets.only(right: deviceWidth(context) * 0.025),
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "Portfolio",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: ResponsiveWidget.isSmallScreen(context)
                      ? deviceHeight(context) * 0.02
                      : 14),
            ),
          ),
        ),
        Padding(
            padding:
                EdgeInsets.fromLTRB(0, 12, deviceWidth(context) * 0.065, 12),
            child: Button("Contact")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(context),
      body: ListView(
        children: <Widget>[
          // Profile(),
          Portfolio(),
          // Contact(),
        ],
      ),
    );
  }
}
