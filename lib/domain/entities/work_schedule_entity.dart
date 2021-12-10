class WorkScheduleEntity {
  final WorkType workType;
  final String workTitle;
  final String workSubTitle;
  final String workScheduleTime;

  WorkScheduleEntity(
      {required this.workType,
      required this.workTitle,
      this.workSubTitle = '',
      this.workScheduleTime = '--:--'});
}

enum WorkType { CHECK_LIST, TRAVEL_PLANE, TRAVEL_TRAIN, MEAL, HOTEL, RELAX }
