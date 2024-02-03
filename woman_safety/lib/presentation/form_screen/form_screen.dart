import 'package:flutter/material.dart';
import 'package:mayank__mj_s_application1/core/app_export.dart';
import 'package:mayank__mj_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:mayank__mj_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:mayank__mj_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:mayank__mj_s_application1/widgets/custom_elevated_button.dart';
import 'package:mayank__mj_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FormScreen extends StatelessWidget {
  FormScreen({Key? key}) : super(key: key);

  TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.orange50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: 411.h,
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Column(children: [
                  _buildSeven(context),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_time".tr,
                              style: theme.textTheme.titleLarge))),
                  SizedBox(height: 5.v),
                  _buildTwentyNine(context),
                  _buildThirty(context),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_message".tr,
                              style: theme.textTheme.titleLarge))),
                  SizedBox(height: 6.v),
                  _buildEleven(context),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(
                      height: 55.v,
                      width: 250.h,
                      text: "lbl_explafe_it".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.headlineSmallPrimaryContainer,
                      onPressed: () {
                        onTapExplafeIt(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapChevronLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_connect_nearby".tr));
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
        width: 374.h,
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 5.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 6.v),
              CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 30.adaptSize,
                  width: 30.adaptSize)
            ]));
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 6.h, right: 20.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_from".tr, style: theme.textTheme.bodyLarge),
                  Text("lbl_to".tr, style: theme.textTheme.bodyLarge)
                ])));
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: CustomTextFormField(
                  width: 175.h,
                  controller: timeController,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 11.v, 14.h, 11.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCalendar,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 46.v),
                  borderDecoration:
                      TextFormFieldStyleHelper.fillPrimaryContainer,
                  filled: true,
                  fillColor: theme.colorScheme.primaryContainer)),
          Container(
              height: 46.v,
              width: 175.h,
              padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 11.v),
              decoration: AppDecoration.fillPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.centerRight))
        ]));
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
        width: 374.h,
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 33.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.v),
              Container(
                  width: 279.h,
                  margin: EdgeInsets.only(right: 32.h),
                  child: Text("msg_lorem_ipsum_dolor".tr,
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer))
            ]));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapChevronLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapExplafeIt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
