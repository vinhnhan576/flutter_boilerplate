import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ExhibitionView extends StatelessWidget {
  const ExhibitionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Exhibition View'),
      ),
    );
  }
}
