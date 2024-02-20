import 'package:flutter/material.dart';
import 'package:portfolio/presentation/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: themeData,
      home: const Scaffold(body: Center(child: Text('Hello'))),
    );
  }
}
