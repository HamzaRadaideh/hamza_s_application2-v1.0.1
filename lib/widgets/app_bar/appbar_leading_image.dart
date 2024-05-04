
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hamza_s_application2/core/app_export.dart';

class AppbarLeadingImage extends StatefulWidget {
  AppbarLeadingImage({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  State<AppbarLeadingImage> createState() => _AppbarLeadingImageState();
}

class _AppbarLeadingImageState extends State<AppbarLeadingImage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap?.call();
      },
      child: Padding(
        padding: widget.margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: widget.imagePath!,
          height: 30.adaptSize,
          width: 30.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
