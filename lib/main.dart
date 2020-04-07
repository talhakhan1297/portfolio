import 'package:flutter/material.dart';
import 'package:portfolio/pages/homePage.dart';
import 'package:portfolio/style/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(context),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
