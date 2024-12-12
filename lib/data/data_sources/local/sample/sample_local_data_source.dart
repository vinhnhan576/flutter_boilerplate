import '../../../models/sample/sample_model.dart';

abstract class SampleLocalDataSource {
  Future<List<SampleModel>> getSamples();
  Future<void> cacheSamples(List<SampleModel> samples);
} 