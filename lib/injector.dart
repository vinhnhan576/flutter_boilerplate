part of 'main.dart';

final injector = GetIt.instance;

Future<void> init() async {
  injector
    //* Network
    ..registerLazySingleton<DioClient>(DioClient.new)
    
    //Database
    ..registerLazySingleton<LocalDatabase>(
      () => LocalDatabase(),
    )

    // Usecases
    ..registerLazySingleton(
      () => SampleUsecases(injector()),
    )

    // Repositories
    ..registerLazySingleton<SampleRepository>(
      () => SampleRepositoryImpl(injector(), injector()),
    )

    // Data sources
    ..registerLazySingleton<SampleLocalDataSource>(
      () => SampleLocalDataSourceImpl(injector<LocalDatabase>()),
    )
    ..registerLazySingleton<SampleRemoteDataSource>(
      () => SampleRemoteDataSourceImpl(injector()),
    )

    // Cubits
    ..registerFactory<GetSampleDetailCubit>(
      () => GetSampleDetailCubit(injector()),
    )
    ..registerFactory<GetSampleListCubit>(
      () => GetSampleListCubit(injector()),
    )

    // Register ThemeCubit
    ..registerLazySingleton<ThemeCubit>(ThemeCubit.new);
}
