import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'color_scheme.dart';
part 'text_theme.dart';
part 'theme_extensions.dart';

final ThemeData themeData = ThemeData(
  useMaterial3: true,
  colorScheme: _colorScheme,
  textTheme: _textTheme,
  fontFamily: _textStyles.fontFamily,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: const Color(0xFF101729),
);
