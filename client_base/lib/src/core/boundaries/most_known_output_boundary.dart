import 'package:client_base/src/core/boundaries/repository_output_boundary.dart';
import 'package:rxdart/rxdart.dart';

abstract class MostKnownOutputBoundary {
  Observable<List<RepositoryOutputBoundary>> get repositories;
}
