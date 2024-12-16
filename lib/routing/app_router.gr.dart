// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ExhibitionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExhibitionView(),
      );
    },
    MasterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MasterView(),
      );
    },
    PlaceRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlaceView(),
      );
    },
    RelicRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RelicView(),
      );
    },
    RouteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RouteView(),
      );
    },
    SampleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SampleDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SampleDetailView(
          key: args.key,
          sampleDetail: args.sampleDetail,
        ),
      );
    },
    SampleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SampleView(),
      );
    },
  };
}

/// generated route for
/// [ExhibitionView]
class ExhibitionRoute extends PageRouteInfo<void> {
  const ExhibitionRoute({List<PageRouteInfo>? children})
      : super(
          ExhibitionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExhibitionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MasterView]
class MasterRoute extends PageRouteInfo<void> {
  const MasterRoute({List<PageRouteInfo>? children})
      : super(
          MasterRoute.name,
          initialChildren: children,
        );

  static const String name = 'MasterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlaceView]
class PlaceRoute extends PageRouteInfo<void> {
  const PlaceRoute({List<PageRouteInfo>? children})
      : super(
          PlaceRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaceRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RelicView]
class RelicRoute extends PageRouteInfo<void> {
  const RelicRoute({List<PageRouteInfo>? children})
      : super(
          RelicRoute.name,
          initialChildren: children,
        );

  static const String name = 'RelicRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RouteView]
class RouteRoute extends PageRouteInfo<void> {
  const RouteRoute({List<PageRouteInfo>? children})
      : super(
          RouteRoute.name,
          initialChildren: children,
        );

  static const String name = 'RouteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SampleDetailView]
class SampleDetailRoute extends PageRouteInfo<SampleDetailRouteArgs> {
  SampleDetailRoute({
    Key? key,
    required SampleEntity sampleDetail,
    List<PageRouteInfo>? children,
  }) : super(
          SampleDetailRoute.name,
          args: SampleDetailRouteArgs(
            key: key,
            sampleDetail: sampleDetail,
          ),
          initialChildren: children,
        );

  static const String name = 'SampleDetailRoute';

  static const PageInfo<SampleDetailRouteArgs> page =
      PageInfo<SampleDetailRouteArgs>(name);
}

class SampleDetailRouteArgs {
  const SampleDetailRouteArgs({
    this.key,
    required this.sampleDetail,
  });

  final Key? key;

  final SampleEntity sampleDetail;

  @override
  String toString() {
    return 'SampleDetailRouteArgs{key: $key, sampleDetail: $sampleDetail}';
  }
}

/// generated route for
/// [SampleView]
class SampleRoute extends PageRouteInfo<void> {
  const SampleRoute({List<PageRouteInfo>? children})
      : super(
          SampleRoute.name,
          initialChildren: children,
        );

  static const String name = 'SampleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
