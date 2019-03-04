import 'package:client_base/src/core/boundaries/repository_output_boundary.dart';
import 'package:client_base/src/presentation/components/repositorylistitem/repository_list_item_view_model.dart';
import 'package:common_base/common_base.dart';
import 'package:client_base/src/presentation/components/repositorylistitem/repository_list_item_view_contract.dart';

class RepositoryListItemPresenter<V> extends DuckPresenter<
    RepositoryListItemViewModel, RepositoryListItemViewContract<V>> {
  final RepositoryOutputBoundary _boundary;

  RepositoryListItemPresenter(this._boundary);

  @override
  void setView(RepositoryListItemViewContract<V> view) {
    super.setView(view);

    viewModelSubject.add(RepositoryListItemViewModel(
      _boundary.name,
      _boundary.stargazersCount.toString(),
      _boundary.forksCount.toString(),
    ));
  }
}
