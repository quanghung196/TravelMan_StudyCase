import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/common/constants/size_constants.dart';
import 'package:study_case/common/extensions/size_extensions.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  final IconData tabIcon;
  final bool isTabSelected;
  final Function() onItemSelected;

  const CustomBottomNavigationBarItem(
      {Key? key,
      required this.tabIcon,
      this.isTabSelected = false,
      required this.onItemSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color activeColorIcon = Color(0xFF3650A5);
    const Color inactiveColorIcon = Color(0xFF98A9B0);
    const Color activeColorBackGround = Color(0xFFF2F3F5);
    const Color inactiveColorBackGround = Colors.transparent;
    const double iconSize = Sizes.dimen_24;

    return GestureDetector(
      onTap: onItemSelected,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: Sizes.dimen_4.h),
        decoration: BoxDecoration(
          color:
              isTabSelected ? activeColorBackGround : inactiveColorBackGround,
          borderRadius: BorderRadius.circular(Sizes.dimen_10.w),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: Sizes.dimen_3.h, horizontal: Sizes.dimen_18.w),
          child: Icon(
            tabIcon,
            size: iconSize.w,
            color: isTabSelected ? activeColorIcon : inactiveColorIcon,
          ),
        ),
      ),
    );
  }
}
