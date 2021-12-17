import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:study_case/presentation/blocs/custom_bottom_navigation_bar/custom_bottom_navigation_bar_bloc.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());


  //bloc
  getItInstance.registerFactory(
          () => CustomBottomNavigationBarBloc());
}
