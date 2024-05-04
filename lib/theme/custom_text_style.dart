// ignore_for_file: unused_element, unnecessary_import

import 'package:flutter/material.dart';
import 'package:hamza_s_application2/core/app_export.dart';
import 'package:hamza_s_application2/theme/theme_helper.dart';

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get mochiyPopOne {
    return copyWith(
      fontFamily: 'Mochiy Pop One',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray700Regular => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumMochiyPopOneBlack900 =>
      theme.textTheme.bodyMedium!.mochiyPopOne.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
// Label text style
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
      );
}
