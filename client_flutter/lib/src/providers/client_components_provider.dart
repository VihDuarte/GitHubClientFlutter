import 'package:client_base/client_base.dart';
import 'package:client_flutter/src/presentation/components/repositorylisItem/repository_list_item_view.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:common_flutter/common_flutter.dart';

class ClientComponentsProvider {
  static Widget getRepositoryListItem(RepositoryOutputBoundary boundary) {
    RepositoryListItemViewContract<Widget> Function(
            Observable<RepositoryListItemViewModel>) viewProvider =
        (Observable<RepositoryListItemViewModel> viewModel) {
      return RepositoryListItemView(viewModel);
    };

    return DuckStatelessContainer(
      viewProvider,
      RepositoryListItemPresenter<Widget>(boundary),
    );
  }
}
