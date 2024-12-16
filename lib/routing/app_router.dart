import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/core/constants/path_constants.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_entity.dart';
import 'package:flutter_boilerplate/presentation/master/master_view.dart';
import 'package:flutter_boilerplate/presentation/sample/pages/sample_detail_view.dart';
import 'package:flutter_boilerplate/presentation/sample/pages/sample_view.dart';
import 'package:flutter_boilerplate/presentation/place/pages/place_view.dart';
import 'package:flutter_boilerplate/presentation/relic/pages/relic_view.dart';
import 'package:flutter_boilerplate/presentation/route/pages/route_view.dart';
import 'package:flutter_boilerplate/presentation/exhibition/pages/exhibition_view.dart';

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
                  page: PlaceRoute.page,
                  path: PathConstants.place,
                  title: (_, __) => 'Place'),
              AdaptiveRoute(
                  page: RelicRoute.page,
                  path: PathConstants.relic,
                  title: (_, __) => 'Relic'),
              AdaptiveRoute(
                  page: RouteRoute.page,
                  path: PathConstants.route,
                  title: (_, __) => 'Route'),
              AdaptiveRoute(
                  page: ExhibitionRoute.page,
                  path: PathConstants.exhibition,
                  title: (_, __) => 'Exhibition'),
            ]),
        AdaptiveRoute(
          page: SampleDetailRoute.page,
          path: PathConstants.sampleDetail,
        ),
      ];
}
