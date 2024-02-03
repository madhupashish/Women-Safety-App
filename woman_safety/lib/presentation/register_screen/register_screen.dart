import 'package:flutter/material.dart';
import 'package:mayank__mj_s_application1/core/app_export.dart';
import 'package:mayank__mj_s_application1/widgets/custom_icon_button.dart';
import 'package:mayank__mj_s_application1/widgets/custom_outlined_button.dart';
import 'package:mayank__mj_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    boxShadow: [
                      BoxShadow(
                          color: appTheme.black9003f.withOpacity(0.3),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(10, 10))
                    ],
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup19),
                        fit: BoxFit.cover)),
                child: Container(
                    width: 411.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 21.h, vertical: 41.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          Text("lbl_register".tr,
                              style: theme.textTheme.displaySmall),
                          SizedBox(height: 20.v),
                          Text("lbl_full_name".tr,
                              style: theme.textTheme.bodyMedium),
                          SizedBox(height: 2.v),
                          _buildFullName(context),
                          SizedBox(height: 13.v),
                          Text("lbl_email".tr,
                              style: theme.textTheme.bodyMedium),
                          SizedBox(height: 2.v),
                          _buildEmail(context),
                          SizedBox(height: 18.v),
                          Text("lbl_password".tr,
                              style: theme.textTheme.bodyMedium),
                          SizedBox(height: 2.v),
                          _buildPassword(context),
                          SizedBox(height: 26.v),
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
                                            imagePath: ImageConstant
                                                .imgFlatColorIconsGoogleAmber500)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: CustomIconButton(
                                            height: 45.adaptSize,
                                            width: 45.adaptSize,
                                            padding: EdgeInsets.all(9.h),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgLogosFacebook))),
                                    Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: CustomIconButton(
                                            height: 45.adaptSize,
                                            width: 45.adaptSize,
                                            padding: EdgeInsets.all(9.h),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgAntDesignAppleFilled)))
                                  ])))
                        ]))),
            bottomNavigationBar: _buildEighteen(context)));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 60.h),
        child: CustomTextFormField(controller: fullNameController));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 60.h),
        child: CustomTextFormField(controller: emailController));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 60.h),
        child: CustomTextFormField(
            controller: passwordController,
            textInputAction: TextInputAction.done,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 144.h,
        text: "lbl_register".tr,
        margin: EdgeInsets.only(left: 26.h, bottom: 6.v),
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 30.h, bottom: 21.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    onTapTxtAlreadyMember(context);
                  },
                  child: Container(
                      width: 186.h,
                      margin: EdgeInsets.only(top: 32.v),
                      decoration: AppDecoration.outlineBlack9003f,
                      child: Text("msg_already_member".tr,
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium))),
              _buildRegisterButton(context)
            ]));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapAuth(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyMember(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
