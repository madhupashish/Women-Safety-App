import 'package:flutter/material.dart';
import 'package:mayank__mj_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgArchive,
      activeIcon: ImageConstant.imgArchive,
      type: BottomBarEnum.Archive,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGrid,
      activeIcon: ImageConstant.imgGrid,
      type: BottomBarEnum.Grid,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMap,
      activeIcon: ImageConstant.imgMap,
      type: BottomBarEnum.Map,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBook,
      activeIcon: ImageConstant.imgBook,
      type: BottomBarEnum.Book,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      type: BottomBarEnum.User,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder22,
              ),
              child: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 28.adaptSize,
                width: 28.adaptSize,
                color: theme.colorScheme.onPrimaryContainer,
                margin: EdgeInsets.only(
                  top: 8.v,
                  bottom: 9.v,
                ),
              ),
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder25,
              ),
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 28.adaptSize,
                width: 28.adaptSize,
                color: theme.colorScheme.primary,
                margin: EdgeInsets.symmetric(vertical: 11.v),
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Archive,
  Grid,
  Map,
  Book,
  User,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
