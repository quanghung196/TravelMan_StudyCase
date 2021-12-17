import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_case/common/constants/size_constants.dart';
import 'package:study_case/common/extensions/size_extensions.dart';
import 'package:study_case/presentation/blocs/custom_bottom_navigation_bar/custom_bottom_navigation_bar_bloc.dart';

import '../../../main.dart';
import 'overview_tab_widget/custom_bottom_navigation_bar_widget/custom_bottom_navigation_bar_widget.dart';
import 'overview_tab_widget/custom_schedule_widget/custom_schedule_widget.dart';

class TravelInfomation extends StatefulWidget {
  const TravelInfomation({Key? key}) : super(key: key);

  @override
  _TravelInfomationState createState() => _TravelInfomationState();
}

class _TravelInfomationState extends State<TravelInfomation> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomBottomNavigationBarBloc,
        CustomBottomNavigationBarState>(
      builder: (context, state) {
        return Stack(
          children: [
            if (state is CustomBottomNavigationBarTabChanged)
              _showWidgetByPosition[state.currentTabIndex],
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(Sizes.dimen_16.w),
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: Color(0xFF3650A5),
                    ),
                  ),
                ),
                CustomBottomNavigationBarWidget(
                    currentTabIndex: state.currentTabIndex),
              ],
            ),
          ],
        );
      },
    );
  }

  final List<Widget> _showWidgetByPosition = [
    CustomScheduleWidget(scheduleList: generateList()),
    const Center(
      child: Text('Tab 2'),
    ),
    const Center(
      child: Text('Tab 3'),
    ),
    const Center(
      child: Text('Tab 4'),
    ),
    const Center(
      child: Text('Tab 5'),
    )
  ];
}
