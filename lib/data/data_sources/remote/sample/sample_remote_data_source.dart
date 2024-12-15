import 'package:flutter_boilerplate/data/models/sample/sample_listing_model.dart';
import 'package:flutter_boilerplate/data/models/sample/sample_model.dart';

abstract class SampleRemoteDataSource {
  Future<SampleListingModel> getSamples({required int page});
  Future<SampleModel> getSampleDetail({required String sampleId});
}
