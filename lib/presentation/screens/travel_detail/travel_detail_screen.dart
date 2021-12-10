import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: const [
                  FractionallySizedBox(
                    alignment: Alignment.topCenter,
                    heightFactor: 0.25,
                    child: TravelMap(),
                  ),
                  FractionallySizedBox(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 0.75,
                    child: TravelInfomation(),
                  )
                ],
              ))
        ],
      ),
    );
  }
}