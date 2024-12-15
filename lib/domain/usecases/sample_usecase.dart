import 'package:dartz/dartz.dart';

import 'package:flutter_boilerplate/core/exceptions/network_exception.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_entity.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_listing_entity.dart';
import 'package:flutter_boilerplate/domain/repositories/sample_repository.dart';

class SampleUsecases {
  final SampleRepository _repository;

  SampleUsecases(this._repository);

  Future<Either<NetworkException, SampleEntity>> getSampleDetail(
      {required String sampleId}) async {
    return _repository.getSampleDetail(sampleId: sampleId);
  }

  Future<Either<NetworkException, SampleListingEntity>> getSamples(
      {required int page}) async {
    return _repository.getSamples(page: page);
  }

  // Future<Either<Failure, void>> addSample(SampleEntity sample) async {
  //   return _repository.addSample(sample);
  // }

  // Future<Either<Failure, void>> updateSample(SampleEntity sample) async {
  //   return _repository.updateSample(sample);
  // }

  // Future<Either<Failure, void>> deleteSample(String id) async {
  //   return _repository.deleteSample(id);
  // }
}
