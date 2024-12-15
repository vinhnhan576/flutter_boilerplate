import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/core/network/dio_client.dart';
import 'package:flutter_boilerplate/presentation/sample/cubits/get_sample_list_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:flutter_boilerplate/core/database/local_database.dart';
import 'package:flutter_boilerplate/core/theme/app_theme.dart';
import 'package:flutter_boilerplate/core/theme/cubit/theme_cubit.dart';
import 'package:flutter_boilerplate/data/repositories/export_repository_impls.dart';
import 'package:flutter_boilerplate/domain/repositories/export_repositories.dart';
import 'package:flutter_boilerplate/data/data_sources/export_datasources.dart';
import 'package:flutter_boilerplate/domain/usecases/export_usecases.dart';
import 'package:flutter_boilerplate/presentation/sample/cubits/get_sample_detail_cubit.dart';
import 'package:flutter_boilerplate/routing/app_router.dart';

// import 'domain/entities/export_entities.dart';
// import 'data/models/export_models.dart';

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
