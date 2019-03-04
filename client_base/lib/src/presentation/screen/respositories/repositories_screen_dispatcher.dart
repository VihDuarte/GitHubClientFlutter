import 'package:client_base/src/core/action.dart';
import 'package:client_base/src/core/boundaries/most_known_input_boundary.dart';
import 'package:client_base/src/presentation/client_navigator_contract.dart';

class RepositoriesScreenDispatcher {
  final MostKnownInputBoundary _boundary;
  final ClientNavigatorContract _navigator;

  RepositoriesScreenDispatcher(this._boundary, this._navigator);

  void dispatch(Action action) {
    switch (action.runtimeType) {
      case OpenDetail:
        _navigator.openDetail((action as OpenDetail).repositoryId);
        break;
      case LoadRepositories:
        _boundary.loadPage((action as LoadRepositories).page);
        break;
    }
  }
}
