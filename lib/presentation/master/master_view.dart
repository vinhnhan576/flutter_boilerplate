import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/export_entities.dart';
import '../../routing/app_router.dart';
import '../sample/cubits/get_sample_detail_cubit.dart';

@RoutePage()
class MasterView extends StatelessWidget {
  const MasterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetSampleDetailCubit, GetSampleDetailState>(
        builder: (context, state) {
          if (state is GetSampleDetailLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is GetSampleDetailError) {
            return Center(
              child: Text(state.message),
            );
          }

          if (state is GetSampleDetailLoaded) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.router.push(SampleDetailRoute(
                    sampleDetail: state.sample,
                  ));
                },
                child: const Text('View Sample Details'),
              ),
            );
          }

          return const Center(
            child: Text('No samples available'),
          );
        },
      ),
    );
  }
}
