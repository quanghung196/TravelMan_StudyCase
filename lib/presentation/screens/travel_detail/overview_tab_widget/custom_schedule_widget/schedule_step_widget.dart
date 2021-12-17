import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/common/constants/size_constants.dart';
import 'package:study_case/common/extensions/size_extensions.dart';
import 'package:study_case/domain/entities/schedule_entity.dart';
import 'package:study_case/presentation/screens/travel_detail/overview_tab_widget/custom_schedule_widget/schedule_step_list_widget.dart';

class ScheduleStepWidget extends StatelessWidget {
  final int stepIndex;
  final ScheduleEntity scheduleEntity;

  const ScheduleStepWidget({
    Key? key,
    required this.stepIndex,
    required this.scheduleEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color scheduleTitleColor = Color(0xFF98A9B0);
    const double circleStepWidth = Sizes.dimen_45;
    const double intrinsicHeightWidth = Sizes.dimen_1;
    const double cirleStepBorderWidth = Sizes.dimen_1;
    const Color circleStepColor = Color(0xFF98A9B0);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_8.w),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: Sizes.dimen_2.h),
                width: circleStepWidth.w,
                height: circleStepWidth.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: cirleStepBorderWidth, color: circleStepColor),
                  color: Colors.transparent, // inner circle color
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      (stepIndex + 1).toString(),
                      style: TextStyle(
                          color: scheduleTitleColor,
                          fontSize: Sizes.dimen_16.sp,
                          height: 1.0),
                    ),
                    Text(
                      '日目',
                      style: TextStyle(
                          color: scheduleTitleColor,
                          fontSize: Sizes.dimen_10.sp,
                          height: 1.0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_8.w),
                child: Text(
                  scheduleEntity.scheduleTitle,
                  style: TextStyle(
                      fontSize: Sizes.dimen_18.sp, color: scheduleTitleColor),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Positioned.fill(
                left: ((circleStepWidth - intrinsicHeightWidth) / 2).w,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border(
                      left: BorderSide(
                          width: intrinsicHeightWidth.w,
                          color: circleStepColor),
                    ),
                    color: Colors.transparent, // inner circle color
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: Sizes.dimen_6.h,
                    bottom: Sizes.dimen_6.h,
                    right: Sizes.dimen_8.w,
                    left: (circleStepWidth / 2 + Sizes.dimen_16).w),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: scheduleEntity.workScheduleList.length + 1,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: Sizes.dimen_3.h,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    if (index == scheduleEntity.workScheduleList.length) {
                      return _addButton();
                    }
                    return ScheduleListItemWidget(
                      workScheduleEntity:
                          scheduleEntity.workScheduleList[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _addButton() {
    const Color iconAddColor = Color(0xFF3650A5);

    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          const Icon(
            Icons.add,
            color: iconAddColor,
          ),
          SizedBox(
            width: Sizes.dimen_4.w,
          ),
          Text(
            '予定を追加',
            style: TextStyle(color: iconAddColor, fontSize: Sizes.dimen_14.sp),
          ),
        ],
      ),
    );
  }
}
