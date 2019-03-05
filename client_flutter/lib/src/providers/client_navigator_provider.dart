import 'package:client_base/client_base.dart';
import 'package:client_flutter/src/client_navigator.dart';
import 'package:flutter/material.dart';

class ClientNavigatorProvider {
  static ClientNavigatorContract getClientNavigator(BuildContext context) =>
      ClientNavigator(context);
}
