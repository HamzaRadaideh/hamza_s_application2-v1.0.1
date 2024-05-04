// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import 'package:hamza_s_application2/core/app_export.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreateNewPasswordPageScreen extends StatelessWidget {
  CreateNewPasswordPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 33.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  onTap: () {
                                    onTapImgArrowdownone(context);
                                  },
                                ),
                                Opacity(
                                  opacity: 0.7,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 9.h,
                                      top: 5.v,
                                      bottom: 2.v,
                                    ),
                                    child: Text(
                                      "Create New Password",
                                      style: CustomTextStyles
                                          .bodyMediumMochiyPopOneBlack900,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 18.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup8,
                          height: 301.adaptSize,
                          width: 301.adaptSize,
                        ),
                        SizedBox(height: 28.v),
                        _buildPasswordColumn(context),
                        SizedBox(height: 47.v),
                        _buildRememberMeRow(context),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "Password",
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "Enter your password",
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildConfirmForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            "Confirm Password",
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: confirmpasswordController,
          hintText: "Re-enter password",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 33.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 12.v),
          _buildPasswordForm(context),
          SizedBox(height: 18.v),
          _buildConfirmForm(context),
          SizedBox(height: 40.v),
          CustomImageView(
            imagePath: ImageConstant.imgSubtract41x313,
            height: 41.v,
            width: 313.h,
            onTap: () {
              onTapImgSubtractone(context);
            },
          ),
          SizedBox(height: 28.v),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Continue without changing password",
              style: CustomTextStyles.bodySmallBlack900,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMeRow(BuildContext context) {
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
  onTapImgArrowdownone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapImgSubtractone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
