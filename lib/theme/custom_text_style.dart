import 'package:flutter/material.dart';
import 'package:healthwyze/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16,
      );
  // Display text style
  static get displayMedium40 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 40,
      );
  static get displayMediumSecondaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 41,
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineMediumMedium => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 26,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargePoppinsErrorContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleLargePoppinsOnErrorContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 23,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }
}
