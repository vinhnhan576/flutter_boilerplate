import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/core/constants/path_constants.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_entity.dart';
import 'package:flutter_boilerplate/presentation/master/master_view.dart';
import 'package:flutter_boilerplate/presentation/sample/pages/sample_detail_view.dart';
import 'package:flutter_boilerplate/presentation/sample/pages/sample_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Widget,Route')
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MasterRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: SampleRoute.page,
        ),
        AutoRoute(
          page: SampleDetailRoute.page,
        ),
      ];
}
