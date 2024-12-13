import '../../../models/sample/sample_listing_model.dart';
import '../../../models/sample/sample_model.dart';

abstract class SampleRemoteDataSource {
  Future<SampleListingModel> getSamples(
      {required int perPage, required int page});
  Future<SampleModel> getSampleDetail({required String sampleId});
}
