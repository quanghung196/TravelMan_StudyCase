import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/common/constants/size_constants.dart';
import 'package:study_case/common/extensions/size_extensions.dart';
import 'package:study_case/common/screenutil/screenutil.dart';

class OverViewAppbarWidget extends StatelessWidget {
  const OverViewAppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(
          top: ScreenUtil.statusBarHeight + Sizes.dimen_1.h,
          left: Sizes.dimen_8.w,
          right: Sizes.dimen_8.w,
          bottom: Sizes.dimen_1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
