import 'package:study_case/domain/entities/work_schedule_entity.dart';

class ScheduleEntity {
  final String scheduleTitle;
  final List<WorkScheduleEntity> workScheduleList;

  ScheduleEntity({required this.scheduleTitle, this.workScheduleList = const []});
}
