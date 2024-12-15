import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_boilerplate/data/data_sources/mappers/entity_convertible.dart';
import 'package:flutter_boilerplate/domain/entities/sample/sample_listing_entity.dart';
import 'sample_model.dart';

part 'sample_listing_model.g.dart';

@JsonSerializable()
class SampleListingModel extends Equatable 
    implements EntityConvertible<SampleListingModel, SampleListingEntity> {
  final List<SampleModel> items;
  final int total;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'per_page')
  final int perPage;
  @JsonKey(name: 'total_pages')
  final int totalPages;

  const SampleListingModel({
    required this.items,
    required this.total,
    required this.currentPage,
    required this.perPage,
    required this.totalPages,
  });

  @override
  SampleListingEntity toEntity() => SampleListingEntity(
    items: items.map((item) => item.toEntity()).toList(),
    total: total,
    currentPage: currentPage,
    perPage: perPage,
    totalPages: totalPages,
  );

  @override
  SampleListingModel fromEntity(SampleListingEntity entity) => SampleListingModel(
    items: entity.items.map((item) => SampleModel(
      id: item.id,
      createdAt: item.createdAt,
      isDeleted: item.isDeleted,
    )).toList(),
    total: entity.total,
    currentPage: entity.currentPage,
    perPage: entity.perPage,
    totalPages: entity.totalPages,
  );

  factory SampleListingModel.fromJson(Map<String, dynamic> json) =>
      _$SampleListingModelFromJson(json);

  Map<String, dynamic> toJson() => _$SampleListingModelToJson(this);

  @override
  List<Object?> get props => [items, total, currentPage, perPage, totalPages];
}
