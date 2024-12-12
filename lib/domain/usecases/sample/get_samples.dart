import 'package:dartz/dartz.dart';
import '../../repositories/sample_repository.dart';
import '../../entities/sample.dart';
import '../../../core/errors/failures.dart';

class GetSamples {
  final SampleRepository repository;

  GetSamples(this.repository);

  Future<Either<Failure, List<Sample>>> call() async {
    final result = await repository.getSamples();
    return result.map((samples) => samples
        .map((sample) => Sample(
              id: sample.id,
              createdAt: sample.createdAt,
              isDeleted: sample.isDeleted,
            ))
        .toList());
  }
}
