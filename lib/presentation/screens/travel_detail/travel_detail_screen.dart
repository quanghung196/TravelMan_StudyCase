import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_case/common/constants/size_constants.dart';
import 'package:study_case/common/extensions/size_extensions.dart';
import 'package:study_case/di/get_it.dart';
import 'package:study_case/presentation/blocs/custom_bottom_navigation_bar/custom_bottom_navigation_bar_bloc.dart';
import 'package:study_case/presentation/screens/travel_detail/travel_detail_app_bar_widget.dart';
import 'package:study_case/presentation/screens/travel_detail/travel_infomation.dart';
import 'package:study_case/presentation/screens/travel_detail/travel_map.dart';

class TravelDetailScreen extends StatefulWidget {
  const TravelDetailScreen({Key? key}) : super(key: key);

  @override
  _TravelDetailScreenState createState() => _TravelDetailScreenState();
}

class _TravelDetailScreenState extends State<TravelDetailScreen> {
  int currentTabIndex = 0;
  late CustomBottomNavigationBarBloc _customBottomNavigationBarBloc;

  @override
  void initState() {
    super.initState();
    _customBottomNavigationBarBloc =
        getItInstance<CustomBottomNavigationBarBloc>();
    _customBottomNavigationBarBloc
        .add(TabChangeEvent(currentTabIndex: currentTabIndex));
  }

  @override
  void dispose() {
    super.dispose();
    _customBottomNavigationBarBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => _customBottomNavigationBarBloc,
          ),
        ],
        child: Column(
          children: [
            const OverViewAppbarWidget(),
            SizedBox(
              height: Sizes.dimen_80.h,
              child: const TravelMap(),
            ),
            const Expanded(
              child: TravelInfomation(),
            ),
          ],
        ),
      ),
    );
  }
}
