import 'package:client_base/src/core/boundaries/repository_output_boundary.dart';
import 'package:client_base/src/data/model/user.dart';

class RepositoryOutput implements RepositoryOutputBoundary {
  @override
  final int id;
  @override
  final String name;
  @override
  final User owner;
  @override
  final String description;
  @override
  final int stargazersCount;
  @override
  final int forksCount;
  @override
  final String language;

  RepositoryOutput(this.id, this.name, this.owner, this.description,
      this.stargazersCount, this.forksCount, this.language);
}
