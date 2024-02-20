part of 'theme.dart';

final _textTheme = TextTheme(
  displayLarge: _textStyles.displayLarge,
  displayMedium: _textStyles.displayMedium,
  displaySmall: _textStyles.displaySmall,
  headlineLarge: _textStyles.headlineLarge,
  headlineMedium: _textStyles.headlineMedium,
  headlineSmall: _textStyles.headlineSmall,
  titleLarge: _textStyles.titleLarge,
  titleMedium: _textStyles.titleMedium,
  titleSmall: _textStyles.titleSmall,
  bodyLarge: _textStyles.bodyLarge,
  bodyMedium: _textStyles.bodyMedium,
  bodySmall: _textStyles.bodySmall,
  labelLarge: _textStyles.labelLarge,
  labelMedium: _textStyles.labelMedium,
  labelSmall: _textStyles.labelSmall,
);

const _textStyles = _PortfolioTextStyles();

abstract class _AppTextStyles {
  TextStyle get baseTextStyle;

  String? get fontFamily;

  TextStyle get displayLarge;
  TextStyle get displayMedium;
  TextStyle get displaySmall;
  TextStyle get headlineLarge;
  TextStyle get headlineMedium;
  TextStyle get headlineSmall;
  TextStyle get titleLarge;
  TextStyle get titleMedium;
  TextStyle get titleSmall;
  TextStyle get bodyLarge;
  TextStyle get bodyMedium;
  TextStyle get bodySmall;
  TextStyle get labelLarge;
  TextStyle get labelMedium;
  TextStyle get labelSmall;
}

class _PortfolioTextStyles implements _AppTextStyles {
  const _PortfolioTextStyles();

  @override
  TextStyle get baseTextStyle => GoogleFonts.inter(
        color: _colorScheme.onSurface,
        letterSpacing: 0,
      );

  @override
  String? get fontFamily => baseTextStyle.fontFamily;

  @override
  TextStyle get displayLarge => baseTextStyle.copyWithGoogleFont(
        fontSize: 57,
        height: 1.12, // 64px
      );

  @override
  TextStyle get displayMedium => baseTextStyle.copyWithGoogleFont(
        fontSize: 45,
        height: 1.16, // 52px
      );

  @override
  TextStyle get displaySmall => baseTextStyle.copyWithGoogleFont(
        fontSize: 36,
        height: 1.22, // 44px
      );

  @override
  TextStyle get bodyLarge => baseTextStyle.copyWithGoogleFont(
        fontSize: 16,
        height: 1.5, // 24px
      );

  @override
  TextStyle get bodyMedium => baseTextStyle.copyWithGoogleFont(
        fontSize: 14,
        height: 1.43, // 20px
      );

  @override
  TextStyle get bodySmall => baseTextStyle.copyWithGoogleFont(
        fontSize: 12,
        height: 1.33, // 16px
      );

  @override
  TextStyle get headlineLarge => baseTextStyle.copyWithGoogleFont(
        fontSize: 32,
        height: 1.25, // 40px
      );

  @override
  TextStyle get headlineMedium => baseTextStyle.copyWithGoogleFont(
        fontSize: 28,
        height: 1.29, // 36px
      );

  @override
  TextStyle get headlineSmall => baseTextStyle.copyWithGoogleFont(
        fontSize: 24,
        height: 1.33, // 32px
      );

  @override
  TextStyle get labelLarge => baseTextStyle.copyWithGoogleFont(
        fontSize: 14,
        height: 1.43, // 20px
      );

  @override
  TextStyle get labelMedium => baseTextStyle.copyWithGoogleFont(
        fontSize: 12,
        height: 1.33, // 16px
      );

  @override
  TextStyle get labelSmall => baseTextStyle.copyWithGoogleFont(
        fontSize: 11,
        height: 1.45, // 16px
      );

  @override
  TextStyle get titleLarge => baseTextStyle.copyWithGoogleFont(
        fontSize: 22,
        height: 1.27, // 28px
      );

  @override
  TextStyle get titleMedium => baseTextStyle.copyWithGoogleFont(
        fontSize: 16,
        height: 1.5, // 24px
      );

  @override
  TextStyle get titleSmall => baseTextStyle.copyWithGoogleFont(
        fontSize: 14,
        height: 1.43, // 20px
      );
}
