import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/presentation/sample/cubits/get_sample_list_cubit.dart';

import 'package:flutter_boilerplate/routing/app_router.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class MasterView extends StatelessWidget {
  const MasterView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GetIt.I<GetSampleListCubit>(),
          )
        ],
        child: AutoTabsScaffold(
          extendBody: true,
          resizeToAvoidBottomInset: true,
          lazyLoad: false,
          routes: const [
            PlaceRoute(),
            RelicRoute(),
            RouteRoute(),
            ExhibitionRoute()
          ],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(50),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
              ],
            ),
          ),
        ));
  }
}
