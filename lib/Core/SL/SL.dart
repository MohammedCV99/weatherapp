import 'package:get_it/get_it.dart';
import 'package:weatherapp/Features/Auth/domain/use_case/login_use_case.dart';
import 'package:weatherapp/Features/Auth/Data/Repositry/Auth_Repositry_imp.dart';
import 'package:weatherapp/Features/Auth/Presention/User_Login/UserCubit.dart';
import 'package:weatherapp/Features/Auth/Presention/User_Signup/SignupCubit.dart';
import 'package:weatherapp/Features/Auth/Presention/User_Signup/SignupState.dart';
import 'package:weatherapp/Features/Auth/domain/repositories/base_login_repository.dart';
import 'package:weatherapp/Features/Auth/domain/use_case/login_use_case.dart';

final sl = GetIt.instance;

void setup() {
  //sl.registerLazySingleton<BaseLoginRepository>(() => LoginRepositoryImpl(
  //    loginRemoteDataSource: sl(),
  //));
  // sl.registerLazySingleton<LoginUseCase>(
  //  () => LoginUseCase(loginRepository: sl()));
  //sl.registerFactory(() => LoginCubit(sl()));
}
