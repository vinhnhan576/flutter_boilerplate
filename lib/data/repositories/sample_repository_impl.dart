import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/sample/sample_listing_entity.dart';
import '../../domain/repositories/sample_repository.dart';
import '../data_sources/remote/sample/sample_remote_data_source.dart';
import '../data_sources/local/sample/sample_local_data_source.dart';
import '../../core/errors/network_exception.dart';

class SampleRepositoryImpl implements SampleRepository {
  final SampleRemoteDataSource _remoteDataSource;
  final SampleLocalDataSource _localDataSource;

  SampleRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<NetworkException, SampleListingEntity>> getSamples() async {
    try { 
      final result = await _remoteDataSource.getSamples();
      return Right(result.toEntity());
    } on DioException catch (e) {
      return Left(NetworkException.fromDioError(e));
    }
  }
}
