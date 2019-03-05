import 'package:client_base/client_base.dart';
import 'package:flutter/material.dart';

class RepositoriesScreenView extends StatelessWidget
    with
        DuckViewContract<RepositoriesScreenViewModel, Widget>,
        RepositoriesScreenViewContract {
  final Widget Function(RepositoryOutputBoundary) _itemBuilder;

  RepositoriesScreenView(this._itemBuilder, viewModelObservable) {
    this.viewModelObservable = viewModelObservable;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<RepositoriesScreenViewModel>(
      stream: viewModelObservable,
      builder: (BuildContext context,
          AsyncSnapshot<RepositoriesScreenViewModel> snapshot) {
        if (!snapshot.hasData || snapshot.data.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
            itemCount: snapshot.data.repositories.length,
            itemBuilder: (BuildContext context, int index) {
              final repository = snapshot.data.repositories[index];
              return _itemBuilder(repository);
            });
      },
    ));
  }

  @override
  Widget getView() {
    return this;
  }
}
