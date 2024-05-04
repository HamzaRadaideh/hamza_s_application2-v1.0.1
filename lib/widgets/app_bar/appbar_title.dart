// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import 'package:hamza_s_application2/theme/custom_text_style.dart';
import 'package:hamza_s_application2/theme/theme_helper.dart';
// ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({Key? key, required this.text, this.margin, this.onTap})
      : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Opacity(
          opacity: 0.7,
          child: Text(
            text,
            style: CustomTextStyles.bodyMediumMochiyPopOneBlack900.copyWith(
              color: appTheme.black900.withOpacity(0.6),
            ),
          ),
        ),
      ),
    );
  }
}
