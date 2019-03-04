import 'package:client_base/client_base.dart';
import 'package:flutter/material.dart';

class RepositoryListItemView extends StatelessWidget
    with
        DuckViewContract<RepositoryListItemViewModel, Widget>,
        RepositoryListItemViewContract {
  RepositoryListItemView(viewModelObservable) {
    this.viewModelObservable = viewModelObservable;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<RepositoryListItemViewModel>(
        stream: viewModelObservable,
        builder: (BuildContext context,
            AsyncSnapshot<RepositoryListItemViewModel> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          final item = snapshot.data;

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
  }

  @override
  Widget getView() {
    return this;
  }
}
