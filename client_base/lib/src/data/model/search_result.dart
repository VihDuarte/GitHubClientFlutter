import 'package:client_base/src/data/model/repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
  final List<Repository> items;
  @JsonKey(name: 'total_count')
  final int totalCount;

  SearchResult(this.items, this.totalCount);

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}
