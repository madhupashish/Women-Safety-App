import 'package:flutter/material.dart';
import 'package:mayank__mj_s_application1/core/app_export.dart';
import 'package:mayank__mj_s_application1/widgets/custom_icon_button.dart';
import 'package:mayank__mj_s_application1/widgets/custom_outlined_button.dart';
import 'package:mayank__mj_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: 411.h,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle2,
                      height: 549.v,
                      width: 411.h,
                      alignment: Alignment.topCenter),
                  _buildLoginSection(context),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1,
                      height: 273.v,
                      width: 411.h,
                      alignment: Alignment.topCenter)
                ]))));
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h, right: 30.h, bottom: 5.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_login".tr, style: theme.textTheme.displaySmall),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text("lbl_email".tr,
                          style: theme.textTheme.bodyMedium)),
                  SizedBox(height: 2.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 47.h),
                      child: CustomTextFormField(controller: emailController)),
                  SizedBox(height: 18.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text("lbl_password".tr,
                          style: theme.textTheme.bodyMedium)),
                  SizedBox(height: 2.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 47.h),
                      child: CustomTextFormField(
                          controller: passwordController,
                          textInputAction: TextInputAction.done,
                          obscureText: true)),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 46.h),
                          child: Text("msg_forgot_password".tr,
                              style: theme.textTheme.titleSmall))),
                  GestureDetector(
                      onTap: () {
                        onTapAuth(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 45.adaptSize,
                                width: 45.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFlatColorIconsGoogle)),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: CustomIconButton(
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    padding: EdgeInsets.all(9.h),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgLogosFacebook))),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: CustomIconButton(
                                    height: 45.adaptSize,
                                    width: 45.adaptSize,
                                    padding: EdgeInsets.all(9.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgAntDesignAppleFilled)))
                          ]))),
                  SizedBox(height: 41.v),
                  Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapTxtNewHereRegister(context);
                                },
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 33.v, bottom: 4.v),
                                    child: Text("msg_new_here_register".tr,
                                        style: theme.textTheme.titleMedium))),
                            CustomOutlinedButton(
                                width: 144.h,
                                text: "lbl_login".tr,
                                onPressed: () {
                                  onTapLogin(context);
                                })
                          ]))
                ])));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapAuth(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtNewHereRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
