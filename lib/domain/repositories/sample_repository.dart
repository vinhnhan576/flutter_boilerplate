import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_listing_entity.dart';
import '../../core/exceptions/network_exception.dart';
import '../entities/sample/sample_entity.dart';

abstract class SampleRepository {
  //* Remote Data Source
  Future<Either<NetworkException, SampleListingEntity>> getSamples(
      {required int perPage, required int page});

  //* Local Data Source
  // Future<void> saveSample({required SampleEntity sample});
  Future<Either<NetworkException, SampleEntity>> getSampleDetail(
      {required String sampleId});
  // Future<Either<Failure, void>> addSample(SampleEntity sample);
  // Future<Either<Failure, void>> updateSample(SampleEntity sample);
  // Future<Either<Failure, void>> deleteSample(String id);
}
