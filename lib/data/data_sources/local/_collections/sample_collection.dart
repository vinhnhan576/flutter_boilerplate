import 'package:isar/isar.dart';

import 'package:flutter_boilerplate/domain/entities/sample/sample_entity.dart';
import 'package:flutter_boilerplate/data/data_sources/mappers/entity_convertible.dart';

part 'sample_collection.g.dart';

@collection
class SampleCollection with EntityConvertible<SampleCollection, SampleEntity> {
  Id id = Isar.autoIncrement;
  late DateTime createdAt;
  late bool isDeleted;

  SampleCollection({
    required this.createdAt,
    required this.isDeleted,
  });

  @override
  SampleEntity toEntity() {
    return SampleEntity(
      id: id.toString(),
      createdAt: createdAt,
      isDeleted: isDeleted,
    );
  }

  @override
  SampleCollection fromEntity(SampleEntity model) {
    return SampleCollection(
      createdAt: model.createdAt,
      isDeleted: model.isDeleted,
    );
  }
}
