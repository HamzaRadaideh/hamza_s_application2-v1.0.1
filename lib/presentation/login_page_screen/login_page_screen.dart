// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import 'package:hamza_s_application2/core/utils/image_constant.dart';
import 'package:hamza_s_application2/core/utils/size_utils.dart';
import 'package:hamza_s_application2/routes/app_routes.dart';
import 'package:hamza_s_application2/theme/app_decoration.dart';
import 'package:hamza_s_application2/theme/custom_text_style.dart';
import 'package:hamza_s_application2/theme/theme_helper.dart';
import 'package:hamza_s_application2/widgets/custom_image_view.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: SizeUtils.height,
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 33.v),
                    _buildLoginToYouStack(context),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 21.h,
                        vertical: 33.v,
                      ),
                      decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          _buildEmailForm(context),
                          SizedBox(height: 18.v),
                          _buildPasswordForm(context),
                          SizedBox(height: 28.v),
                          _buildRememberMeRow(context),
                          SizedBox(height: 19.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgSubtract,
                            height: 41.v,
                            width: 313.h,
                          ),
                          SizedBox(height: 22.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 13.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomOutlinedButton(
                                    text: "Google",
                                    margin: EdgeInsets.only(right: 12.h),
                                    leftIcon: Container(
                                      margin: EdgeInsets.only(right: 11.h),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgGoogle951,
                                        height: 29.adaptSize,
                                        width: 29.adaptSize,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CustomOutlinedButton(
                                    text: "Facebook",
                                    margin: EdgeInsets.only(left: 12.h),
                                    leftIcon: Container(
                                      margin: EdgeInsets.only(right: 11.h),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgFacebook1441,
                                        height: 28.adaptSize,
                                        width: 28.adaptSize,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 18.v),
                          GestureDetector(
                            onTap: () {
                              onTapRowconfirmation(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Don’t have an account?",
                                            style: theme.textTheme.bodySmall,
                                          ),
                                          TextSpan(
                                            text: " ",
                                          )
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text(
                                      "Sign up fo free!",
                                      style: CustomTextStyles.bodySmallGray700,
                                    ),
                                  )
                                ],
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginToYouStack(BuildContext context) {
    return SizedBox(
      height: 188.v,
      width: 313.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup5,
            height: 140.adaptSize,
            width: 140.adaptSize,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 17.v),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Login to your Account",
              style: theme.textTheme.headlineSmall,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 30.adaptSize,
            width: 30.adaptSize,
            alignment: Alignment.topLeft,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailForm(BuildContext context) {
    return Column(
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
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRememberMeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomCheckboxButton(
              text: "Remember me",
              value: rememberMe,
              onChange: (value) {
                rememberMe = value;
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapTxtForgotpassword(context);
            },
            child: Text(
              "Forgot password",
              style: CustomTextStyles.labelLargeGray700,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the forgotPasswordPageScreen when the action is triggered.
  onTapTxtForgotpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordPageScreen);
  }

  /// Navigates to the signUpPageScreen when the action is triggered.
  onTapRowconfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpPageScreen);
  }
}
