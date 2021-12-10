import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/domain/entities/schedule_entity.dart';
import 'package:study_case/presentation/screens/travel_detail/overview_tab_widget/custom_schedule_widget/schedule_step_widget.dart';

class CustomScheduleWidget extends StatelessWidget {
  final List<ScheduleEntity> scheduleList;

  const CustomScheduleWidget({Key? key, required this.scheduleList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: scheduleList.length,
      itemBuilder: (BuildContext context, int index) {
        return ScheduleStepWidget(
          stepIndex: index,
          scheduleEntity: scheduleList[index],
        );
      },
    );
  }
}
