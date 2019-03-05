import 'package:client_base/src/core/action.dart';
import 'package:client_base/src/core/boundaries/most_known_output_boundary.dart';
import 'package:client_base/src/core/boundaries/repository_output_boundary.dart';
import 'package:client_base/src/presentation/screen/respositories/repositories_screen_view_contract.dart';
import 'package:client_base/src/presentation/screen/respositories/repositories_screen_view_model.dart';
import 'package:common_base/common_base.dart';

class RepositoriesScreenPresenter<V> extends DuckPresenter<
    RepositoriesScreenViewModel, RepositoriesScreenViewContract<V>> {
  final MostKnownOutputBoundary _boundary;
  final Function(Action) _dispatcher;

  RepositoriesScreenPresenter(this._boundary, this._dispatcher);

  @override
  void init() {
    _listenBoundary();
    _dispatcher(LoadRepositories(0));
  }

  void _listenBoundary() {
    _boundary.repositories.doOnListen(
      () {
        viewModelSubject.add(RepositoriesScreenViewModel(isLoading: true));
      },
    ).listen(
      (List<RepositoryOutputBoundary> repositories) {
        viewModelSubject.add(
          RepositoriesScreenViewModel(
              isLoading: false, repositories: repositories),
        );
      },
    );
  }
}
