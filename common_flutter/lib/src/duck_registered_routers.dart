import 'package:common_flutter/src/duck_router.dart';
import 'package:flutter/widgets.dart';

class DuckRegisteredRouters {
  final List<DuckRouter> _coordinators = List();

  void register(DuckRouter coordinator) {
    _coordinators.add(coordinator);
  }

  Route getRoute(RouteSettings settings) {
    return _coordinators
        .firstWhere(
            (DuckRouter coordinator) => coordinator.canHandleRoute(settings))
        .openRoute(settings);
  }
}
