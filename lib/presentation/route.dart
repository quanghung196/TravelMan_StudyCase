import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/common/constants/route_constant.dart';
import 'package:study_case/presentation/screens/travel_detail/travel_detail_screen.dart';

class RouteGenetator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case RouteList.TRAVEL_DETAIL_SCREEN:
        return MaterialPageRoute(
            builder: (context) => const TravelDetailScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => const TravelDetailScreen());
    }
  }
}
