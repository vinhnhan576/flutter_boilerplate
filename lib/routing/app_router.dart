import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/constants/path_constants.dart';
import '../presentation/master/master_view.dart';
import '../presentation/sample/pages/sample_view.dart';
import '../presentation/sample/pages/sample_detail_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Widget,Route')
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AdaptiveRoute(
            page: MasterRoute.page,
            path: PathConstants.master,
            initial: true,
            children: [
              AdaptiveRoute(
                page: SampleRoute.page,
                path: PathConstants.sample,
                title: (_, __) => 'Sample',
              )
            ]),
        CustomRoute(
          page: SampleDetailRoute.page,
          path: PathConstants.sampleDetail,
          durationInMilliseconds: 800,
          reverseDurationInMilliseconds: 800,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ];
}
