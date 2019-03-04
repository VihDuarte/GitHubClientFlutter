import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String login;
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  final String name;

  User(this.id, this.login, this.avatarUrl, this.name);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
