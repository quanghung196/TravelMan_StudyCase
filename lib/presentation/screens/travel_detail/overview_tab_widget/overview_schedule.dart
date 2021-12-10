import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/domain/entities/schedule_entity.dart';

import '../../../../main.dart';
import 'custom_schedule_widget/custom_schedule_widget.dart';

class OverviewSchedule extends StatefulWidget {
  const OverviewSchedule({Key? key}) : super(key: key);

  @override
  _OverviewScheduleState createState() => _OverviewScheduleState();
}

class _OverviewScheduleState extends State<OverviewSchedule> {

  final List<ScheduleEntity> scheduleList = generateList();

  @override
  Widget build(BuildContext context) {
    return CustomScheduleWidget(scheduleList: scheduleList);
  }
}
