import 'package:client_base/client_base.dart';
import 'package:client_flutter/src/client_coordinator.dart';
import 'package:client_flutter/src/providers/client_boundaries_provider.dart';
import 'package:client_flutter/src/providers/client_components_provider.dart';
import 'package:client_flutter/src/providers/client_dispatchers_provider.dart';
import 'package:client_flutter/src/providers/client_gateways_provider.dart';
import 'package:client_flutter/src/providers/client_navigator_provider.dart';
import 'package:client_flutter/src/providers/client_screens_provider.dart';
import 'package:common_flutter/common_flutter.dart';
import 'package:flutter/material.dart';

class ClientRouter extends DuckRouter {
  @override
  final knownRoutes = {"/": _repositoryRoute};

  static final Route Function() _repositoryRoute = () {
    return MaterialPageRoute(
      builder: (context) {
        return ClientCoordinator.getRepositoriesScreen(context);
      },
    );
  };
}
