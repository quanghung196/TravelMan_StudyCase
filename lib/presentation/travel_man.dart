import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/common/constants/route_constant.dart';
import 'package:study_case/common/screenutil/screenutil.dart';
import 'package:study_case/presentation/route.dart';

class TravelMan extends StatefulWidget {
  const TravelMan({Key? key}) : super(key: key);

  @override
  State<TravelMan> createState() => _TravelManState();
}

class _TravelManState extends State<TravelMan> {

  @override
  void initState() {
    super.initState();
    ScreenUtil.init();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteList.TRAVEL_DETAIL_SCREEN,
      onGenerateRoute: RouteGenetator.generateRoute,
    );
  }
}
