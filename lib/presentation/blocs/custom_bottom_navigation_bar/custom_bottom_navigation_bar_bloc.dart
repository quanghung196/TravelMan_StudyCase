import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'custom_bottom_navigation_bar_event.dart';

part 'custom_bottom_navigation_bar_state.dart';

class CustomBottomNavigationBarBloc extends Bloc<CustomBottomNavigationBarEvent,
    CustomBottomNavigationBarState> {
  CustomBottomNavigationBarBloc() : super(CustomBottomNavigationBarInitial()) {
    on<CustomBottomNavigationBarEvent>(
      (event, emit) {
        if (event is TabChangeEvent) {
          emit(CustomBottomNavigationBarTabChanged(
              currentTabIndex: event.currentTabIndex));
        }
      },
    );
  }
}
