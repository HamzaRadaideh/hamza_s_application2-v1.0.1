
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hamza_s_application2/theme/custom_text_style.dart';
import 'package:hamza_s_application2/theme/theme_helper.dart';

class AppbarTitle extends StatefulWidget {
  AppbarTitle({Key? key, required this.text, this.margin, this.onTap})
      : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  State<AppbarTitle> createState() => _AppbarTitleState();
}

class _AppbarTitleState extends State<AppbarTitle> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
      },
      child: Padding(
        padding: widget.margin ?? EdgeInsets.zero,
        child: Opacity(
          opacity: 0.7,
          child: Text(
            widget.text,
            style: CustomTextStyles.bodyMediumMochiyPopOneBlack900.copyWith(
              color: appTheme.black900.withOpacity(0.6),
            ),
          ),
        ),
      ),
    );
  }
}
