// ignore_for_file: duplicate_ignore, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hamza_s_application2/core/app_export.dart';
import 'package:hamza_s_application2/theme/theme_helper.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField(
      {Key? key,
      required this.context,
      required this.onChanged,
      this.alignment,
      this.controller,
      this.textStyle,
      this.hintStyle,
      this.validator})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget)
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? theme.textTheme.displayMedium,
        hintStyle: hintStyle ?? theme.textTheme.displayMedium,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        pinTheme: PinTheme(
          fieldHeight: 91.h,
          fieldWidth: 54.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(27.h),
          inactiveColor: appTheme.gray700,
          activeColor: appTheme.gray700,
          selectedColor: appTheme.gray700,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
