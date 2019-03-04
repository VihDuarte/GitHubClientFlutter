abstract class Action {}

class LoadRepositories extends Action {
  final int page;

  LoadRepositories(this.page);
}

class OpenDetail extends Action {
  final int repositoryId;

  OpenDetail(this.repositoryId);
}
