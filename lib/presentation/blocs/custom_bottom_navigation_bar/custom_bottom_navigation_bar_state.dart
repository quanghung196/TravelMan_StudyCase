part of 'custom_bottom_navigation_bar_bloc.dart';

abstract class CustomBottomNavigationBarState extends Equatable {
  final int currentTabIndex;

  const CustomBottomNavigationBarState({this.currentTabIndex = 0});

  @override
  List<Object> get props => [currentTabIndex];
}

class CustomBottomNavigationBarInitial extends CustomBottomNavigationBarState {}

class CustomBottomNavigationBarTabChanged
    extends CustomBottomNavigationBarState {
  const CustomBottomNavigationBarTabChanged({int currentTabIndex = 0})
      : super(currentTabIndex: currentTabIndex);
}
