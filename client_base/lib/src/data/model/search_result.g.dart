// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return SearchResult(
      (json['items'] as List)
          ?.map((e) =>
              e == null ? null : Repository.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['total_count'] as int);
}

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total_count': instance.totalCount
    };
