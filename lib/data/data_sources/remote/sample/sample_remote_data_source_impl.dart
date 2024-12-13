import 'package:dio/dio.dart';
import '../../../models/export_models.dart';
import './sample_remote_data_source.dart';
import '../../../../core/constants/url_constants.dart';

class SampleRemoteDataSourceImpl implements SampleRemoteDataSource {
  final Dio dio;

  SampleRemoteDataSourceImpl({required this.dio});

  @override
  Future<SampleListingModel> getSamples(
      {required int perPage, required int page}) async {
    final response = await dio.get(UrlConstants.samples,
        queryParameters: {'page': page, 'per_page': perPage});
    final model =
        SampleListingModel.fromJson(response.data as Map<String, dynamic>);
    return model;
  }

  @override
  Future<SampleModel> getSampleDetail({required String sampleId}) async {
    final response = await dio.get(UrlConstants.samples);
    final model = SampleModel.fromJson(response.data as Map<String, dynamic>);
    return model;
  }
}
