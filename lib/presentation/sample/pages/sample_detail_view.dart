import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/export_entities.dart';
import '../cubits/get_sample_detail_cubit.dart';

@RoutePage()
class SampleDetailView extends StatelessWidget {
  const SampleDetailView({super.key, required this.sampleDetail});

  final SampleEntity sampleDetail;

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
              child: Text(state.sample.toString()),
            );
          }

          return const Center(
            child: Text('No data available'),
          );
        },
      ),
    );
  }
}
