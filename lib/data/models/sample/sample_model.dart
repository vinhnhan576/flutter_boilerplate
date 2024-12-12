import 'package:json_annotation/json_annotation.dart';
import '../../../domain/entities/sample/sample_entity.dart';
import '../../data_sources/mappers/entity_convertible.dart';
import 'package:equatable/equatable.dart';

part 'sample_model.g.dart';

@JsonSerializable()
class SampleModel extends Equatable
    implements EntityConvertible<SampleModel, SampleEntity> {
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'is_deleted')
  final bool isDeleted;

  const SampleModel({
    required this.id,
    required this.createdAt,
    required this.isDeleted,
  });

  factory SampleModel.fromJson(Map<String, dynamic> json) =>
      _$SampleModelFromJson(json);

  @override
  SampleEntity toEntity() => SampleEntity(
        id: id,
        createdAt: createdAt,
        isDeleted: isDeleted,
      );

  @override
  SampleModel fromEntity(SampleEntity entity) => SampleModel(
        id: entity.id,
        createdAt: entity.createdAt,
        isDeleted: entity.isDeleted,
      );

  Map<String, dynamic> toJson() => _$SampleModelToJson(this);

  @override
  List<Object?> get props => [id, createdAt, isDeleted];
}
