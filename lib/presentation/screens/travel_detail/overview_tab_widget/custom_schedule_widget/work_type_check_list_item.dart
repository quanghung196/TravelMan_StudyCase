import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/common/constants/size_constants.dart';
import 'package:study_case/common/extensions/size_extensions.dart';
import 'package:study_case/domain/entities/work_schedule_entity.dart';

class WorkTypeCheckListItem extends StatelessWidget {
  final WorkScheduleEntity workScheduleEntity;

  const WorkTypeCheckListItem({Key? key, required this.workScheduleEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color borderColor = Color(0xFFEFF1F8);
    const double borderWidth = Sizes.dimen_1;
    const double borderRadius = Sizes.dimen_5;
    const double contentPadding = Sizes.dimen_8;
    const checkIconColor = Color(0xFFD0D6DA);
    const double scheduleTitleSize = Sizes.dimen_14;
    const double scheduleIconSize = Sizes.dimen_24;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth.w,
          style: BorderStyle.solid,
        ),
        color: borderColor,
        borderRadius: BorderRadius.circular(borderRadius.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(contentPadding.w),
        child: Row(
          children: [
            const Icon(
              Icons.check,
              size: scheduleIconSize,
              color: checkIconColor,
            ),
            SizedBox(
              width: contentPadding.w,
            ),
            Expanded(
              child: Text(
                workScheduleEntity.workTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: scheduleTitleSize.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
