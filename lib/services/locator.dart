import 'package:get_it/get_it.dart';
import '../login/model/authmodel.dart';
import '../login/model/authstatemodel.dart';
import '../login/model/baseModel.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => BaseModel());
  locator.registerLazySingleton(() => AuthModel());
  locator.registerLazySingleton(() => AuthStateModel());
}
