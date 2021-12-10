import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:study_case/presentation/travel_man.dart';

import 'di/get_it.dart' as getIt;
import 'domain/entities/schedule_entity.dart';
import 'domain/entities/work_schedule_entity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());
  runApp(const TravelMan());
}

List<ScheduleEntity> generateList() {
  List<WorkScheduleEntity> dummyWorkScheduleList1 = [];
  dummyWorkScheduleList1
    ..add(WorkScheduleEntity(
        workTitle: '工場スタッフと会食',
        workType: WorkType.MEAL,
        workScheduleTime: '12:00'))
    ..add(WorkScheduleEntity(
        workTitle: '現地スタッフ向け手土産購入', workType: WorkType.CHECK_LIST))
    ..add(WorkScheduleEntity(
        workTitle: '深セン到着を報告', workType: WorkType.CHECK_LIST))
    ..add(WorkScheduleEntity(
        workTitle: '空港から工場へ電車移動',
        workType: WorkType.TRAVEL_TRAIN,
        workScheduleTime: '18:00'))
    ..add(WorkScheduleEntity(
        workTitle: '都之都大酒店',
        workType: WorkType.HOTEL,
        workSubTitle: '宿泊 | 1 × ルーム ダブルベッド 1 台 禁煙'));

  List<WorkScheduleEntity> dummyWorkScheduleList2 = [];
  dummyWorkScheduleList2
    ..add(WorkScheduleEntity(
        workTitle: '**********', workType: WorkType.CHECK_LIST))
    ..add(WorkScheduleEntity(
        workTitle: '**********', workType: WorkType.CHECK_LIST))
    ..add(WorkScheduleEntity(
        workTitle: '**********', workType: WorkType.CHECK_LIST))
    ..add(WorkScheduleEntity(
        workTitle: '会議', workType: WorkType.RELAX, workScheduleTime: '9:00'))
    ..add(WorkScheduleEntity(
        workTitle: '工場スタッフとランチ',
        workType: WorkType.MEAL,
        workScheduleTime: '12:00'))
    ..add(WorkScheduleEntity(
        workTitle: '会議', workType: WorkType.RELAX, workScheduleTime: '13:00'))
    ..add(WorkScheduleEntity(
        workTitle: '鳳凰発展集団 李氏と商談',
        workType: WorkType.RELAX,
        workScheduleTime: '15:00'))
    ..add(WorkScheduleEntity(
        workTitle: '都之都大酒店',
        workType: WorkType.HOTEL,
        workSubTitle: '宿泊 | 1 × ルーム ダブルベッド 1 台 禁煙'));

  List<ScheduleEntity> dummyList = [];
  dummyList
    ..add(ScheduleEntity(
        scheduleTitle: '2021/11/30（火）深セン',
        workScheduleList: dummyWorkScheduleList1))
    ..add(ScheduleEntity(
        scheduleTitle: '2021/12/1（水）深セン',
        workScheduleList: dummyWorkScheduleList2));
  dummyList.add(
      ScheduleEntity(scheduleTitle: '2021/12/2（水）深セン'));

  return dummyList;
}
