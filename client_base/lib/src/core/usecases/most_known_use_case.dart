import 'dart:async';

import 'package:client_base/src/core/boundaries/repository_output.dart';
import 'package:client_base/src/core/boundaries/repository_output_boundary.dart';
import 'package:client_base/src/data/gateways/githubclient_gateway_contract.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/model/repository.dart';
import '../boundaries/most_known_input_boundary.dart';
import '../boundaries/most_known_output_boundary.dart';

class MostKnownUseCase
    implements MostKnownInputBoundary, MostKnownOutputBoundary {
  final GithubClientGatewayContract _gateway;

  final BehaviorSubject<List<RepositoryOutputBoundary>> _repositoriesSubject =
      BehaviorSubject<List<RepositoryOutputBoundary>>();

  @override
  Observable<List<RepositoryOutputBoundary>> get repositories =>
      _repositoriesSubject;

  MostKnownUseCase(this._gateway);

  @override
  void loadPage(int page) {
    StreamTransformer;
    _repositoriesSubject.addStream(
      _gateway.getPage(page: page).map((List<Repository> events) => events
          .map((Repository repository) => RepositoryOutput(
                repository.id,
                repository.name,
                repository.owner,
                repository.description,
                repository.stargazersCount,
                repository.forksCount,
                repository.language,
              ))
          .toList()),
    );
  }
}
