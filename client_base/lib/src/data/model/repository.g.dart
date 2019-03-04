// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository(
      json['id'] as int,
      json['name'] as String,
      json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      json['description'] as String,
      json['stargazers_count'] as int,
      json['forks_count'] as int,
      json['language'] as String);
}

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'forks_count': instance.forksCount,
      'language': instance.language
    };
