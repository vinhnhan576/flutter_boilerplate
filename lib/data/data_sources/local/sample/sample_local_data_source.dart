import '../_collections/sample_collection.dart';

abstract class SampleLocalDataSource {
  Future<void> saveSample({required SampleCollection sample});
  Future<void> deleteSample({required int sampleId});
}
