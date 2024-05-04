import 'package:flutter/material.dart';
import 'package:hamza_s_application2/core/app_export.dart';
import '../../widgets/custom_text_form_field.dart';

class SignUpPageScreen extends StatefulWidget {
  SignUpPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignUpPageScreen> createState() => _SignUpPageScreenState();
}

class _SignUpPageScreenState extends State<SignUpPageScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 33.v),
                  _buildCreateYourStack(context),
                  SizedBox(height: 29.v),
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
                        _buildPhoneNoForm(context),
                        SizedBox(height: 18.v),
                        _buildPasswordForm(context),
                        SizedBox(height: 18.v),
                        _buildConfirmForm(context),
                        SizedBox(height: 31.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgSubtractGray700,
                          height: 41.v,
                          width: 313.h,
                        ),
                        SizedBox(height: 28.v),
                        GestureDetector(
                          onTap: () {
                            onTapRowconfirmation(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Already have an account!! ",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text(
                                  "Sign in",
                                  style: CustomTextStyles.bodySmallGray700,
                                ),
                              )
                            ],
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
    );
  }

  /// Section Widget
  Widget _buildCreateYourStack(BuildContext context) {
    return Container(
      height: 188.v,
      width: 307.h,
      margin: EdgeInsets.only(left: 17.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup5,
            height: 140.adaptSize,
            width: 140.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 17.v,
              right: 73.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "Create your Account",
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
      padding: EdgeInsets.only(left: 2.h),
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
            textInputType: TextInputType.phone,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
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
      ),
    );
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapRowconfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
