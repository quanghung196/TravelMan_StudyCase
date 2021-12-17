part of 'custom_bottom_navigation_bar_bloc.dart';

abstract class CustomBottomNavigationBarEvent extends Equatable {
  const CustomBottomNavigationBarEvent();
}

class TabChangeEvent extends CustomBottomNavigationBarEvent {
  final int currentTabIndex;

  const TabChangeEvent({required this.currentTabIndex});

  @override
  List<Object?> get props => [currentTabIndex];
}
