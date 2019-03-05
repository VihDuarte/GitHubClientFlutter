import 'package:client_base/client_base.dart';
import 'package:common_base/common_base.dart';

class ClientBoundariesProvider extends ReusableProvider {
  static MostKnownInputBoundary getMostKnownInputBoundary(
    GithubClientGatewayContract _gateway,
  ) =>
      _getMostKnownUseCase(_gateway);

  static MostKnownOutputBoundary getMostKnownOutputBoundary(
    GithubClientGatewayContract _gateway,
  ) =>
      _getMostKnownUseCase(_gateway);

  static MostKnownUseCase _getMostKnownUseCase(
    GithubClientGatewayContract _gateway,
  ) =>
      ReusableProvider.provideFor(
        () => MostKnownUseCase(
              _gateway,
            ),
      );
}
