import 'package:flutter/material.dart';
import 'package:hamza_s_application2/core/app_export.dart';
import '../../widgets/custom_pin_code_text_field.dart'; // ignore_for_file: must_be_immutable

class OtpVerificationPageBottomsheet extends StatelessWidget {
  const OtpVerificationPageBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Verify With OTP",
              style: CustomTextStyles.bodyMediumBlack900,
            ),
          ),
          SizedBox(height: 20.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Enter the OTP send to ",
                  style: CustomTextStyles.bodyMediumRegular,
                ),
                TextSpan(
                  text: "+91 - 82******00",
                  style: CustomTextStyles.bodyMediumGray700,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 47.v),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              right: 22.h,
            ),
            child: CustomPinCodeTextField(
              context: context,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 43.v),
          CustomImageView(
            imagePath: ImageConstant.imgSubtractGray70041x313,
            height: 41.v,
            width: 313.h,
          ),
          SizedBox(height: 24.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.7,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Resend code in :",
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "5",
                  style: CustomTextStyles.bodyMediumGray700Regular,
                ),
              ),
              Text(
                "9",
                style: CustomTextStyles.bodyMediumGray700Regular,
              )
            ],
          )
        ],
      ),
    );
  }
}
