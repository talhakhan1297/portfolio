import 'dart:ui';

import 'package:flutter/material.dart';

part 'color_scheme.dart';
part 'text_theme.dart';
part 'theme_extensions.dart';

final ThemeData themeData = ThemeData(
  useMaterial3: true,
  colorScheme: _colorScheme,
  textTheme: _textTheme,
  fontFamily: _textStyles.fontFamily,
  scaffoldBackgroundColor: const Color.fromRGBO(16, 23, 41, 1),
);
