// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleListingModel _$SampleListingModelFromJson(Map<String, dynamic> json) =>
    SampleListingModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => SampleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
    );

Map<String, dynamic> _$SampleListingModelToJson(SampleListingModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total_pages': instance.totalPages,
    };
