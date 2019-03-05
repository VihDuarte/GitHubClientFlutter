import 'package:flutter/widgets.dart';

abstract class DuckRouter {
  Map<String, Route Function()> knownRoutes;

  Route openRoute(RouteSettings settings) {
    if (knownRoutes.containsKey(settings.name)) {
      return knownRoutes[settings.name]();
    }
  }

  bool canHandleRoute(RouteSettings settings) =>
      knownRoutes.containsKey(settings.name);
}
