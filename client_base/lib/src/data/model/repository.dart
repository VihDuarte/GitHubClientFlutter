import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'repository.g.dart';

@JsonSerializable()
class Repository {
  final int id;
  final String name;
  final User owner;
  final String description;
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @JsonKey(name: 'forks_count')
  final int forksCount;
  final String language;

  Repository(this.id, this.name, this.owner, this.description,
      this.stargazersCount, this.forksCount, this.language);

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryToJson(this);
}
