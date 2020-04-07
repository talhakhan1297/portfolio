import 'package:flutter/material.dart';
import 'package:portfolio/style/dimensions.dart';

class Button extends StatelessWidget {
  final String text;
  const Button(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth(context) * 0.0183),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: Theme.of(context).accentColor,
      onPressed: () {
        print("height: " +
            MediaQuery.of(context).size.height.toString() +
            ", width: " +
            MediaQuery.of(context).size.width.toString());
      },
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
