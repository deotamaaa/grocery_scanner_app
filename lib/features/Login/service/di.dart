import 'package:get_it/get_it.dart';
import 'package:grocery_scanner_app/data/remote/grocery_remote.dart';
import 'package:grocery_scanner_app/data/remote/grocery_remote_impl.dart';
import 'package:grocery_scanner_app/data/repository/grocery_repository_impl.dart';
import 'package:grocery_scanner_app/domain/repository/grocery_repository.dart';
import 'package:grocery_scanner_app/domain/usecases/grocery_usecase.dart';
import 'package:grocery_scanner_app/features/Home/cubit/grocery_cubit.dart';
import 'package:grocery_scanner_app/features/Login/service/isar.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  // Register data sources
  getIt.registerLazySingleton<IsarService>(() => IsarService());
  getIt.registerLazySingleton<GroceryRemote>(() => GroceryRemoteImpl());

  // Register repositories
  getIt.registerLazySingleton<GroceryRepository>(
      () => GroceryRepositoryImpl(getIt<GroceryRemote>()));

  // Register use cases
  getIt.registerLazySingleton<GroceryUseCase>(
      () => GroceryUseCase(getIt<GroceryRepository>()));

  // Register Cubit
  getIt.registerFactory<GroceryCubit>(
      () => GroceryCubit(getIt<GroceryUseCase>()));
}
