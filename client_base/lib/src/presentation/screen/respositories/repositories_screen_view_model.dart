import 'package:client_base/src/core/boundaries/repository_output_boundary.dart';

class RepositoriesScreenViewModel{
  final bool isLoading;
  final List<RepositoryOutputBoundary> repositories;

  const RepositoriesScreenViewModel({this.isLoading, this.repositories});
}
