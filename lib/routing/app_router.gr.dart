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
    MasterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MasterView(),
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
