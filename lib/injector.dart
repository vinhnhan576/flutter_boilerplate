part of 'main.dart';

final injector = GetIt.instance;

Future<void> init() async {
  //Database
  injector.registerLazySingleton<LocalDatabase>(
    () => LocalDatabase(),
  );

  // Usecases
  injector.registerLazySingleton(
    () => SampleUsecases(injector()),
  );

  // Repositories
  injector.registerLazySingleton<SampleRepository>(
    () => SampleRepositoryImpl(injector(), injector()),
  );

  // Data sources
  injector.registerLazySingleton<SampleLocalDataSource>(
    () => SampleLocalDataSourceImpl(injector()),
  );

  // Cubits
  injector.registerFactory(
    () => GetSampleDetailCubit(injector()),
  );
}
