// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:hamza_s_application2/core/app_export.dart';
import 'package:hamza_s_application2/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray300,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray600,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              3,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: appTheme.gray300,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
}
