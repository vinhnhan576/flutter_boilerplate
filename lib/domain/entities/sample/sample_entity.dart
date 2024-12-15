import 'package:equatable/equatable.dart';

class SampleEntity extends Equatable {
  final String id;
  final DateTime createdAt;
  final bool isDeleted;

  const SampleEntity({
    required this.id,
    required this.createdAt,
    required this.isDeleted,
  });
  
  @override
  List<Object?> get props => [id, createdAt, isDeleted];
}
