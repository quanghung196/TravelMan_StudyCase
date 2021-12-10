import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/domain/entities/work_schedule_entity.dart';
import 'package:study_case/presentation/screens/travel_detail/overview_tab_widget/custom_schedule_widget/others_type_item.dart';
import 'package:study_case/presentation/screens/travel_detail/overview_tab_widget/custom_schedule_widget/work_type_check_list_item.dart';

class ScheduleListItemWidget extends StatelessWidget {
  final WorkScheduleEntity workScheduleEntity;

  const ScheduleListItemWidget({Key? key, required this.workScheduleEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (workScheduleEntity.workType == WorkType.CHECK_LIST)
          WorkTypeCheckListItem(
            workScheduleEntity: workScheduleEntity,
          )
        else
          OthersTypeItem(
            workScheduleEntity: workScheduleEntity,
          ),
      ],
    );
  }
}
