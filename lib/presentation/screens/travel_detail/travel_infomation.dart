import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_case/domain/entities/schedule_entity.dart';

import '../../../main.dart';
import 'overview_tab_widget/custom_schedule_widget/custom_schedule_widget.dart';

class TravelInfomation extends StatefulWidget {
  const TravelInfomation({Key? key}) : super(key: key);

  @override
  _TravelInfomationState createState() => _TravelInfomationState();
}

class _TravelInfomationState extends State<TravelInfomation> {
  final List<ScheduleEntity> scheduleList = generateList();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_drive_file_outlined),
            label: 'File',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist),
            label: 'CheckList',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Attachment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_outlined),
            label: 'Cost',
          )
        ],
        onTap: (int index) {
          onItemSelected(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return CustomScheduleWidget(scheduleList: scheduleList);
    } else {
      return const Center(
        child: Text('data'),
      );
    }
  }

  void onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
