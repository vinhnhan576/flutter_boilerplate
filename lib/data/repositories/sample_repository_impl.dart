import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:flutter_boilerplate/core/exceptions/network_exception.dart';
import 'package:flutter_boilerplate/data/data_sources/remote/sample/sample_remote_data_source.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_entity.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_listing_entity.dart';
import 'package:flutter_boilerplate/domain/repositories/sample_repository.dart';
import 'package:flutter_boilerplate/data/data_sources/local/sample/sample_local_data_source.dart';

class SampleRepositoryImpl implements SampleRepository {
  final SampleRemoteDataSource _remoteDataSource;
  final SampleLocalDataSource _localDataSource;

  SampleRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<NetworkException, SampleListingEntity>> getSamples(
      {required int page}) async {
    try {
      final result =
          await _remoteDataSource.getSamples(page: page);
      return Right(result.toEntity());
    } on DioException catch (e) {
      return Left(NetworkException.fromDioError(e));
    }
  }

  @override
  Future<Either<NetworkException, SampleEntity>> getSampleDetail(
      {required String sampleId}) async {
    try {
      final result =
          await _remoteDataSource.getSampleDetail(sampleId: sampleId);

      return Right(result.toEntity());
    } on DioException catch (e) {
      return Left(NetworkException.fromDioError(e));
    }
  }

  // @override
  // Future<void> saveSample({required SampleEntity sample}) async {
  //   try {
  //     final sampleModel = SampleModel(
  //       id: sample.id,
  //       createdAt: sample.createdAt,
  //       isDeleted: sample.isDeleted,
  //     );
  //     await _localDataSource.saveSample(sample: sampleModel);
  //   } catch (_) {
  //     rethrow;
  //   }
  // }
}
