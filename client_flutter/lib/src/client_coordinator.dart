import 'package:client_base/client_base.dart';
import 'package:client_flutter/src/providers/client_boundaries_provider.dart';
import 'package:client_flutter/src/providers/client_components_provider.dart';
import 'package:client_flutter/src/providers/client_dispatchers_provider.dart';
import 'package:client_flutter/src/providers/client_gateways_provider.dart';
import 'package:client_flutter/src/providers/client_navigator_provider.dart';
import 'package:client_flutter/src/providers/client_screens_provider.dart';
import 'package:flutter/material.dart';

class ClientCoordinator {
  static Widget getRepositoriesScreen(BuildContext context) {
    final _gateway = ClientGatewaysProvider.getGithubClientGateway();

    final _outputBoundary =
        ClientBoundariesProvider.getMostKnownOutputBoundary(_gateway);
    final _inputBoundary =
        ClientBoundariesProvider.getMostKnownInputBoundary(_gateway);

    final _navigator = ClientNavigatorProvider.getClientNavigator(context);

    final _dispatcher =
        ClientDispatchersProvider.getRepositoriesScreenDispatcher(
            _inputBoundary, _navigator);

    final _itemBuilder = (RepositoryOutputBoundary boundary) =>
        ClientComponentsProvider.getRepositoryListItem(boundary);

    return ClientScreensProvider.getRepositoriesScreen(
      _outputBoundary,
      _dispatcher.dispatch,
      _itemBuilder,
    );
  }
}
