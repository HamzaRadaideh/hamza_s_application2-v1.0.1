// ignore_for_file: duplicate_ignore, unnecessary_import

import 'package:flutter/material.dart';
import 'package:hamza_s_application2/core/app_export.dart';
import 'package:hamza_s_application2/widgets/custom_image_view.dart';
// ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 30.adaptSize,
          width: 30.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
