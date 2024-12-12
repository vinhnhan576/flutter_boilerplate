import 'package:dartz/dartz.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_listing_entity.dart';
import '../../core/errors/network_exception.dart';

abstract class SampleRepository {
  Future<Either<NetworkException, SampleListingEntity>> getSamples();
  // Future<Either<Failure, SampleEntity>> getSampleById(String id);
  // Future<Either<Failure, void>> addSample(SampleEntity sample);
  // Future<Either<Failure, void>> updateSample(SampleEntity sample);
  // Future<Either<Failure, void>> deleteSample(String id);
}
