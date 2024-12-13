import 'package:flutter/material.dart';
import '../../../domain/entities/sample/sample_listing_entity.dart';

class SampleList extends StatelessWidget {
  final SampleListingEntity samples;

  const SampleList({
    super.key,
    required this.samples,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: samples.items.length,
      itemBuilder: (context, index) {
        final sample = samples.items[index];
        return ListTile(
          title: Text(sample.id),
          subtitle: Text(sample.createdAt.toString()),
        );
      },
    );
  }
}
