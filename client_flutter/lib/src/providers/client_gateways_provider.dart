import 'package:client_flutter/src/data/gateways/githubclient_gateway.dart';
import 'package:common_base/common_base.dart';
import 'package:client_base/client_base.dart';

class ClientGatewaysProvider {
  static GithubClientGatewayContract getGithubClientGateway() =>
      ReusableProvider.provideFor(() => GithubClientGateway());
}
