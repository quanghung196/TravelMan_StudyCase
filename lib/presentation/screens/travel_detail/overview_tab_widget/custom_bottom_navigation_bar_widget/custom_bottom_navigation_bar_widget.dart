import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_case/common/constants/size_constants.dart';
import 'package:study_case/common/extensions/size_extensions.dart';
import 'package:study_case/presentation/blocs/custom_bottom_navigation_bar/custom_bottom_navigation_bar_bloc.dart';
import 'package:study_case/presentation/screens/travel_detail/overview_tab_widget/custom_bottom_navigation_bar_widget/tab_model.dart';

import 'custom_bottom_navigation_bar_item.dart';

class CustomBottomNavigationBarWidget extends StatefulWidget {
  final int currentTabIndex;

  const CustomBottomNavigationBarWidget(
      {Key? key, required this.currentTabIndex})
      : super(key: key);

  @override
  _CustomBottomNavigationBarWidgetState createState() =>
      _CustomBottomNavigationBarWidgetState();
}

class _CustomBottomNavigationBarWidgetState
    extends State<CustomBottomNavigationBarWidget> {
  late int currentTabIndex = widget.currentTabIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: Sizes.dimen_6.h,
          right: Sizes.dimen_8.w,
          left: Sizes.dimen_8.w),
      padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_10.w)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var i = 0; i < GenerateTabList.tabModels.length; i++)
            CustomBottomNavigationBarItem(
              tabIcon: GenerateTabList.tabModels[i].tabIcon,
              onItemSelected: () => _onItemSelected(i),
              isTabSelected: GenerateTabList.tabModels[i].tabIndex ==
                  widget.currentTabIndex,
            )
        ],
      ),
    );
  }

  void _onItemSelected(int tabIndex) {
    if (currentTabIndex != tabIndex) {
      BlocProvider.of<CustomBottomNavigationBarBloc>(context)
          .add(TabChangeEvent(currentTabIndex: tabIndex));
      currentTabIndex = tabIndex;
    }
  }
}
