import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/common/constants/size_constants.dart';
import 'package:study_case/common/extensions/size_extensions.dart';
import 'package:study_case/domain/entities/work_schedule_entity.dart';

class OthersTypeItem extends StatelessWidget {
  final WorkScheduleEntity workScheduleEntity;

  const OthersTypeItem({Key? key, required this.workScheduleEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color borderColor = Color(0xFFD0D6DA);
    const double borderWidth = Sizes.dimen_1;
    const double borderRadius = Sizes.dimen_5;
    const double contentPadding = Sizes.dimen_8;
    const iconColor = Color(0xFFD0D6DA);
    const scheduleTimeColor = Color(0xFF657A84);
    const scheduleSubTitleColor = Color(0xFF657A84);
    const double scheduleTitleSize = Sizes.dimen_14;
    const double scheduleSubTitleSize = Sizes.dimen_10;
    const double scheduleTimeSize = Sizes.dimen_16;
    const double scheduleIconSize = Sizes.dimen_48;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth.w,
          style: BorderStyle.solid,
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(borderRadius.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(contentPadding.w),
        child: Row(
          children: [
            SizedBox(
              width: Sizes.dimen_44.w,
              child: Text(
                workScheduleEntity.workScheduleTime,
                style: TextStyle(
                  fontSize: scheduleTimeSize.sp,
                  color: scheduleTimeColor,
                ),
              ),
            ),
            SizedBox(
              width: contentPadding.w,
            ),
            if (workScheduleEntity.workType == WorkType.TRAVEL_PLANE)
              const Icon(
                Icons.airplanemode_active,
                size: scheduleIconSize,
                color: iconColor,
              ),
            if (workScheduleEntity.workType == WorkType.TRAVEL_TRAIN)
              const Icon(
                Icons.toys,
                size: scheduleIconSize,
                color: iconColor,
              ),
            if (workScheduleEntity.workType == WorkType.MEAL)
              const Icon(
                Icons.set_meal_rounded,
                size: scheduleIconSize,
                color: iconColor,
              ),
            if (workScheduleEntity.workType == WorkType.HOTEL)
              const Icon(
                Icons.bed,
                size: scheduleIconSize,
                color: iconColor,
              ),
            if (workScheduleEntity.workType == WorkType.RELAX)
              const Icon(
                Icons.tv,
                size: scheduleIconSize,
                color: iconColor,
              ),
            SizedBox(
              width: contentPadding.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    workScheduleEntity.workTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: scheduleTitleSize.sp),
                  ),
                  if (workScheduleEntity.workSubTitle.isNotEmpty)
                    Text(
                      workScheduleEntity.workSubTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: scheduleSubTitleSize.sp,
                        color: scheduleSubTitleColor,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
