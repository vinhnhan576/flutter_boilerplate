import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'core/database/local_database.dart';
import 'core/theme/cubit/theme_cubit.dart';
import 'domain/usecases/export_usecases.dart';
import 'domain/entities/export_entities.dart';
import 'domain/repositories/export_repositories.dart';
import 'data/models/export_models.dart';
import 'data/repositories/export_repository_impls.dart';
import 'data/data_sources/export_datasources.dart';
import 'presentation/sample/cubits/get_sample_detail_cubit.dart';
import 'routing/app_router.dart';
import 'core/theme/app_theme.dart';

part 'injector.dart';

final router = AppRouter();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await init();

  await injector<LocalDatabase>().init();

  final directory = await getApplicationDocumentsDirectory();

  HydratedBloc.storage =
      await HydratedStorage.build(storageDirectory: directory);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (context) => injector<ThemeCubit>()),
        BlocProvider<GetSampleDetailCubit>(
            create: (context) => injector<GetSampleDetailCubit>())
      ],
      child: ScreenUtilInit(
        builder: (context, child) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return MaterialApp.router(
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeMode: themeState.themeMode,
                routerDelegate: AutoRouterDelegate(router),
                routeInformationParser: router.defaultRouteParser(),
                debugShowCheckedModeBanner: false,
              );
            },
          );
        },
      ),
    );
  }
}
