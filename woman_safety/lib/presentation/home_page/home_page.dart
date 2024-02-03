import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mayank__mj_s_application1/core/app_export.dart';
import 'package:mayank__mj_s_application1/widgets/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primaryContainer,
            body: Container(
                height: 726.v,
                width: 411.h,
                decoration: AppDecoration.fillPrimaryContainer,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgScreenshot2021,
                      height: 726.v,
                      width: 411.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 69.v),
                            SizedBox(
                                height: 628.v,
                                width: 411.h,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 14.h, right: 21.h),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: 51.v,
                                                        width: 44.h,
                                                        margin: EdgeInsets.only(
                                                            left: 58.h),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPolygon1,
                                                                  height: 51.v,
                                                                  width: 44.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgStar1,
                                                                  height: 29.v,
                                                                  width: 28.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top: 9
                                                                              .v,
                                                                          right:
                                                                              4.h))
                                                            ])),
                                                    SizedBox(height: 36.v),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            height: 39.v,
                                                            width: 48.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        137.h),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPolygon1Primary,
                                                                      height:
                                                                          39.v,
                                                                      width:
                                                                          48.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgStar126x27,
                                                                      height:
                                                                          26.v,
                                                                      width:
                                                                          27.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      margin: EdgeInsets.only(
                                                                          top: 2
                                                                              .v))
                                                                ]))),
                                                    Spacer(flex: 60),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            height:
                                                                15.adaptSize,
                                                            width: 15.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        157.h),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.h)))),
                                                    Spacer(flex: 39),
                                                    Container(
                                                        margin: EdgeInsets.only(
                                                            left: 46.h,
                                                            right: 275.h),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 8.h,
                                                                vertical: 6.v),
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: fs.Svg(
                                                                    ImageConstant
                                                                        .imgGroup11),
                                                                fit: BoxFit
                                                                    .cover)),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              SizedBox(
                                                                  height: 7.v),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgStar131x31,
                                                                  height: 31
                                                                      .adaptSize,
                                                                  width: 31
                                                                      .adaptSize)
                                                            ])),
                                                    SizedBox(height: 11.v),
                                                    _buildUserActions(context)
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              height: 53.v,
                                              width: 48.h,
                                              margin:
                                                  EdgeInsets.only(top: 217.v),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPolygon1Primary53x48,
                                                        height: 53.v,
                                                        width: 48.h,
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgStar11,
                                                        height: 31.adaptSize,
                                                        width: 31.adaptSize,
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        margin: EdgeInsets.only(
                                                            right: 6.h,
                                                            bottom: 8.v))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              height: 45.v,
                                              width: 46.h,
                                              margin: EdgeInsets.only(
                                                  bottom: 168.v),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPolygon1Primary45x46,
                                                        height: 45.v,
                                                        width: 46.h,
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgStar129x29,
                                                        height: 29.adaptSize,
                                                        width: 29.adaptSize,
                                                        alignment:
                                                            Alignment.topRight,
                                                        margin: EdgeInsets.only(
                                                            top: 4.v,
                                                            right: 4.h))
                                                  ])))
                                    ]))
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildUserActions(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomIconButton(
          height: 68.v,
          width: 70.h,
          padding: EdgeInsets.all(19.h),
          decoration: IconButtonStyleHelper.fillPrimary,
          onTap: () {
            onTapBtnInfo(context);
          },
          child: CustomImageView(imagePath: ImageConstant.imgInfo)),
      CustomIconButton(
          height: 68.v,
          width: 70.h,
          padding: EdgeInsets.all(22.h),
          decoration: IconButtonStyleHelper.fillPrimary,
          onTap: () {
            onTapBtnIconButton(context);
          },
          child: CustomImageView(imagePath: ImageConstant.imgGroup3))
    ]);
  }

  /// Navigates to the formScreen when the action is triggered.
  onTapBtnInfo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formScreen);
  }

  /// Navigates to the formScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formScreen);
  }
}
