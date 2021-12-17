
import 'package:flutter/material.dart';

class TabModel {
  final int tabIndex;
  final String tabTitle;
  final IconData tabIcon;

  TabModel(
      {required this.tabIndex, required this.tabTitle, required this.tabIcon})
      : assert(tabIndex >= 0, 'index cannot be negative');
}

class GenerateTabList {
  static  List<TabModel> tabModels = [
    TabModel(tabIndex: 0, tabTitle: 'Schedule', tabIcon: Icons.calendar_today_rounded),
    TabModel(tabIndex: 1, tabTitle: 'File', tabIcon: Icons.insert_drive_file_outlined),
    TabModel(tabIndex: 2, tabTitle: 'CheckList', tabIcon: Icons.checklist),
    TabModel(tabIndex: 3, tabTitle: 'Attachment', tabIcon: Icons.bookmark_border),
    TabModel(tabIndex: 4, tabTitle: 'Cost', tabIcon: Icons.monetization_on_outlined),
  ];
}
