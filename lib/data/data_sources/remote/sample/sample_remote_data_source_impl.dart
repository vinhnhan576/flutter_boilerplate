import 'package:flutter_boilerplate/core/network/dio_client.dart';

import 'package:flutter_boilerplate/data/models/export_models.dart';
import './sample_remote_data_source.dart';
import 'package:flutter_boilerplate/core/constants/url_constants.dart';

class SampleRemoteDataSourceImpl implements SampleRemoteDataSource {
  final DioClient dio;

  SampleRemoteDataSourceImpl(this.dio);

  @override
  Future<SampleListingModel> getSamples({required int page}) async {
    final response =
        await dio.get(UrlConstants.samples, queryParameters: {'page': page});
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
