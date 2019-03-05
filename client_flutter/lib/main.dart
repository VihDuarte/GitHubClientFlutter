import 'package:client_flutter/src/client_router.dart';
import 'package:common_flutter/common_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DuckRegisteredRouters coordinators = DuckRegisteredRouters();

  @override
  void initState() {
    super.initState();
    coordinators.register(ClientRouter());
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: coordinators.getRoute,
    );
  }
}
