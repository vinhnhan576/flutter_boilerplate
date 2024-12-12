import 'package:dio/dio.dart';
import '../../../models/sample/sample_listing_model.dart';
import './sample_remote_data_source.dart';
import '../../../../core/constants/url_constants.dart';

class SampleRemoteDataSourceImpl implements SampleRemoteDataSource {
  final Dio dio;

  SampleRemoteDataSourceImpl({required this.dio});

  @override
  Future<SampleListingModel> getSamples() async {
    final response = await dio.get(UrlConstants.samples);
    final model = SampleListingModel.fromJson(response.data as Map<String, dynamic>);
    return model;
  }
}
