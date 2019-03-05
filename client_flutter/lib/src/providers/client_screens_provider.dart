import 'package:client_flutter/src/presentation/screen/repositories/repositories_screen_view.dart';
import 'package:common_flutter/common_flutter.dart';
import 'package:flutter/material.dart';
import 'package:client_base/client_base.dart';
import 'package:rxdart/rxdart.dart';

class ClientScreensProvider {
  static Widget getRepositoriesScreen(
    MostKnownOutputBoundary boundary,
    Widget Function(RepositoryOutputBoundary) itemBuilder,
  ) {
    RepositoriesScreenViewContract<Widget> Function(
            Observable<RepositoriesScreenViewModel>) _viewProvider =
        (Observable<RepositoriesScreenViewModel> viewModel) {
      return RepositoriesScreenView(itemBuilder, viewModel);
    };

    return DuckStatefulContainer(
      _viewProvider,
      RepositoriesScreenPresenter<Widget>(boundary),
    );
  }
}
