import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/common/constants/size_constants.dart';
import 'package:study_case/common/extensions/size_extensions.dart';
import 'package:study_case/presentation/screens/travel_detail/travel_detail_app_bar_widget.dart';
import 'package:study_case/presentation/screens/travel_detail/travel_infomation.dart';
import 'package:study_case/presentation/screens/travel_detail/travel_map.dart';

class TravelDetailScreen extends StatefulWidget {
  const TravelDetailScreen({Key? key}) : super(key: key);

  @override
  _TravelDetailScreenState createState() => _TravelDetailScreenState();
}

class _TravelDetailScreenState extends State<TravelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const OverViewAppbarWidget(),
          SizedBox(
            height: Sizes.dimen_80.h,
            child: const TravelMap(),
          ),
          const Expanded(
            child: TravelInfomation(),
          )
        ],
      ),
    );
  }
}
