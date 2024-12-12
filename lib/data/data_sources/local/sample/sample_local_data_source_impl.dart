import '../../../models/sample/sample_model.dart';
import 'sample_local_data_source.dart';

class SampleLocalDataSourceImpl implements SampleLocalDataSource {
  @override
  Future<List<SampleModel>> getSamples() async {
    // Implement local storage retrieval logic here
    throw UnimplementedError();
  }

  @override
  Future<void> cacheSamples(List<SampleModel> samples) async {
    // Implement local storage caching logic here
    throw UnimplementedError();
  }
} 