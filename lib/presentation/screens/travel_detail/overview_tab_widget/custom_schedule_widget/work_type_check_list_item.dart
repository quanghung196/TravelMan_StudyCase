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
    const Color borderColor = Color(0xFFF2F3F5);
    const Color checkIconColor = Color(0xFFD0D6DA);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: Sizes.dimen_1.w,
          style: BorderStyle.solid,
        ),
        color: borderColor,
        borderRadius: BorderRadius.circular(Sizes.dimen_5.w),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_8.w,vertical: Sizes.dimen_2.h),
        child: Row(
          children: [
            const Icon(
              Icons.check,
              size: Sizes.dimen_24,
              color: checkIconColor,
            ),
            SizedBox(
              width: Sizes.dimen_8.w,
            ),
            Expanded(
              child: Text(
                workScheduleEntity.workTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: Sizes.dimen_14.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
