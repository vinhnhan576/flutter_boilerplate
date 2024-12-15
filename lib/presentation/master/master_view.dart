import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/routing/app_router.dart';

@RoutePage()
class MasterView extends StatelessWidget {
  const MasterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.router.navigate(const SampleRoute()),
          child: const Text('Go to Sample View'),
        ),
      ),
    );
  }
}
