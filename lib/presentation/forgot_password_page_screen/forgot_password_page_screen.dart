// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import 'package:hamza_s_application2/core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../otp_verification_page_bottomsheet/otp_verification_page_bottomsheet.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ForgotPasswordPageScreen extends StatelessWidget {
  ForgotPasswordPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgForgotPasswordAmico,
                  height: 301.adaptSize,
                  width: 301.adaptSize,
                ),
                SizedBox(height: 47.v),
                _buildColumnEmail(context),
                SizedBox(height: 47.v),
                _buildRowRememberMe(context),
                SizedBox(height: 84.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 37.h,
                    right: 35.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomOutlinedButton(
                        width: 131.h,
                        text: "Google",
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 11.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGoogle951,
                            height: 29.adaptSize,
                            width: 29.adaptSize,
                          ),
                        ),
                      ),
                      CustomOutlinedButton(
                        width: 131.h,
                        text: "Facebook",
                        margin: EdgeInsets.only(left: 25.h),
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 11.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFacebook1441,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 17.h,
          top: 13.v,
          bottom: 13.v,
        ),
        onTap: () {
          onTapArrowdownone(context);
        },
      ),
      title: AppbarTitle(
        text: "Forgot Password",
        margin: EdgeInsets.only(left: 9.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "Enter your email",
            textInputType: TextInputType.emailAddress,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNoForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Phone NO",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            controller: phoneController,
            hintText: "Enter your Phone-no",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnEmail(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildEmailForm(context),
          SizedBox(height: 18.v),
          _buildPhoneNoForm(context),
          SizedBox(height: 38.v),
          CustomImageView(
            imagePath: ImageConstant.imgSubtractGray70041x313,
            height: 41.v,
            width: 313.h,
            onTap: () {
              onTapImgSubtractone(context);
            },
          ),
          SizedBox(height: 27.v),
          GestureDetector(
            onTap: () {
              onTapRowbackto(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "Back to",
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "Login",
                    style: CustomTextStyles.bodySmallGray700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowRememberMe(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 36.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCheckboxButton(
            text: "Remember me",
            value: rememberMe,
            onChange: (value) {
              rememberMe = value;
            },
          ),
          Text(
            "Forgot password",
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargeGray700,
          )
        ],
      ),
    );
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapArrowdownone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }

  /// Shows a modal bottom sheet with [OtpVerificationPageBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapImgSubtractone(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => OtpVerificationPageBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapRowbackto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
