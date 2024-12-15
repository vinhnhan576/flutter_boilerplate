import 'package:flutter_boilerplate/data/data_sources/local/_collections/sample_collection.dart';

abstract class SampleLocalDataSource {
  const SampleLocalDataSource();

  Future<void> saveSample({required SampleCollection sample});
  Future<void> deleteSample({required int sampleId});
}
