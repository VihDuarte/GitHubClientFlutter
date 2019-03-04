import 'package:rxdart/rxdart.dart';

import '../../data/model/repository.dart';
import 'package:meta/meta.dart';

abstract class GithubClientGatewayContract {
  Observable<List<Repository>> getPage({
    @required int page,
    String filter = "dart",
    String sort = "stars",
  });
}
