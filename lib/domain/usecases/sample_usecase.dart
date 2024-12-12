import 'package:dartz/dartz.dart';
import '../repositories/sample_repository.dart';
import '../entities/sample/sample_listing_entity.dart';
import '../../../core/errors/network_exception.dart';

class SampleUsecases {
  final SampleRepository _repository;

  SampleUsecases(this._repository);


  // Future<Either<Failure, SampleEntity>> getSampleById(String id) async {
  //   return _repository.getSampleById(id);
  // }

  // Future<Either<Failure, void>> addSample(SampleEntity sample) async {
  //   return _repository.addSample(sample);
  // }

  // Future<Either<Failure, void>> updateSample(SampleEntity sample) async {
  //   return _repository.updateSample(sample);
  // }

  // Future<Either<Failure, void>> deleteSample(String id) async {
  //   return _repository.deleteSample(id);
  // }

  Future<Either<NetworkException, SampleListingEntity>> execute() async {
    return _repository.getSamples();
  }
}
