import 'package:client_base/client_base.dart';
import 'package:client_flutter/src/data/gateways/githubclient_gateway.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: StreamBuilder<List<Repository>>(
        stream: GithubClientGateway().getPage(page: 1),
        builder:
            (BuildContext context, AsyncSnapshot<List<Repository>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                final item = snapshot.data[index];
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(item.name),
                      subtitle: Text("${item.forksCount} forks"),
                      trailing: Column(
                        children: <Widget>[
                          Icon(Icons.star),
                          Text('${item.stargazersCount}')
                        ],
                      ),
                    ),
                    Divider(
                      height: 8.0,
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
