import 'package:flutter/material.dart';
import 'package:mayank__mj_s_application1/core/app_export.dart';
import 'package:mayank__mj_s_application1/widgets/custom_elevated_button.dart';
import 'package:mayank__mj_s_application1/widgets/custom_icon_button.dart';
import 'package:mayank__mj_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.orange50,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: 411.h,
                    decoration: AppDecoration.fillOrange,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 27.h, vertical: 39.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 4.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_profile".tr,
                                      style: theme.textTheme.headlineLarge)),
                              SizedBox(height: 32.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 189.v,
                                      width: 194.h,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 189.v,
                                                    width: 194.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            appTheme.purple300,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    97.h)))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    height: 164.v,
                                                    width: 160.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 7.v),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage7,
                                                              height: 153.v,
                                                              width: 152.h,
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft),
                                                          CustomIconButton(
                                                              height: 32.v,
                                                              width: 33.h,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(4.h),
                                                              decoration:
                                                                  IconButtonStyleHelper
                                                                      .fillPrimaryContainer,
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEdit))
                                                        ])))
                                          ]))),
                              SizedBox(height: 50.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_name".tr,
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainer18)),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: CustomTextFormField(
                                      controller: nameController,
                                      hintText: "msg_marie_antoinette".tr,
                                      borderDecoration: TextFormFieldStyleHelper
                                          .outlineBlackF,
                                      filled: true,
                                      fillColor: appTheme.orange50)),
                              SizedBox(height: 15.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl_email".tr,
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainer18)),
                              SizedBox(height: 6.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: CustomTextFormField(
                                      controller: emailController,
                                      hintText:
                                          "msg_marieantoinette_gmail_com".tr,
                                      textInputAction: TextInputAction.done,
                                      textInputType: TextInputType.emailAddress,
                                      borderDecoration: TextFormFieldStyleHelper
                                          .outlineBlackF,
                                      filled: true,
                                      fillColor: appTheme.orange50)),
                              Spacer(),
                              CustomElevatedButton(
                                  width: 120.h,
                                  text: "lbl_log_out".tr,
                                  onPressed: () {
                                    onTapLogOut(context);
                                  },
                                  alignment: Alignment.centerRight)
                            ]))))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
