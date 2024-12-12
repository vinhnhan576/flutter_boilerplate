import 'package:dartz/dartz.dart';
import '../entities/sample_entity.dart';
import '../../core/errors/failures.dart';

abstract class SampleRepository {
  Future<Either<Failure, List<SampleEntity>>> getSamples();
  Future<Either<Failure, SampleEntity>> getSampleById(String id);
  Future<Either<Failure, void>> addSample(SampleEntity sample);
  Future<Either<Failure, void>> updateSample(SampleEntity sample);
  Future<Either<Failure, void>> deleteSample(String id);
}
