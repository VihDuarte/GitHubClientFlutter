import 'package:client_base/src/data/model/user.dart';

abstract class RepositoryOutputBoundary {
  int get id;

  String get name;

  User get owner;

  String get description;

  int get stargazersCount;

  int get forksCount;

  String get language;
}
