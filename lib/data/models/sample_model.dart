import '../../domain/entities/sample.dart';

class SampleModel extends Sample {
  const SampleModel({
    required String id,
    required DateTime createdAt,
    required bool isDeleted,
  }) : super(
          id: id,
          createdAt: createdAt,
          isDeleted: isDeleted,
        );

  factory SampleModel.fromJson(Map<String, dynamic> json) {
    return SampleModel(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      isDeleted: json['is_deleted'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'is_deleted': isDeleted,
    };
  }
}
