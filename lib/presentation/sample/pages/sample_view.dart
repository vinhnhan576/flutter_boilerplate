import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_boilerplate/presentation/sample/cubits/get_sample_detail_cubit.dart';
import 'package:flutter_boilerplate/presentation/sample/cubits/get_sample_list_cubit.dart';
import 'package:flutter_boilerplate/routing/app_router.dart';


@RoutePage()
class SampleView extends StatelessWidget {
  const SampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<GetSampleListCubit>()..getSampleList(),
      child: Scaffold(
        body: BlocBuilder<GetSampleListCubit, GetSampleListState>(
          builder: (context, state) {
            if (state is GetSampleListLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is GetSampleListError) {
              return Center(
                child: Text(state.message),
              );
            }

            if (state is GetSampleListLoaded) {
              return ListView.builder(
                itemCount: state.samples.length,
                itemBuilder: (context, index) {
                  final sample = state.samples[index];
                  return ListTile(
                    title: Text(sample.toString()),
                    onTap: () {
                      context.router.push(SampleDetailRoute(sampleDetail: sample));
                    },
                  );
                },
              );
            }

            return const Center(
              child: Text('No samples available'),
            );
          },
        ),
      ),
    );
  }
}
