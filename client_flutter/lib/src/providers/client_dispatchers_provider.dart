import 'package:client_base/client_base.dart';

class ClientDispatchersProvider {
  static RepositoriesScreenDispatcher getRepositoriesScreenDispatcher(
    MostKnownInputBoundary _boundary,
    ClientNavigatorContract _navigator,
  ) =>
      RepositoriesScreenDispatcher(_boundary, _navigator);
}
