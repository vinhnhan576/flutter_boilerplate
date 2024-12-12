import '../../../models/sample/sample_listing_model.dart';

abstract class SampleRemoteDataSource {
  Future<SampleListingModel> getSamples();
}
