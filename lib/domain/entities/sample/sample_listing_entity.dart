import 'package:equatable/equatable.dart';
import 'sample_entity.dart';

class SampleListingEntity extends Equatable {
  final List<SampleEntity> items;
  final int total;
  final int currentPage;
  final int perPage;
  final int totalPages;

  const SampleListingEntity({
    required this.items,
    required this.total,
    required this.currentPage,
    required this.perPage,
    required this.totalPages,
  });

  @override
  List<Object> get props => [items, total, currentPage, perPage, totalPages];
}
