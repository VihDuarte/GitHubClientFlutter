import 'dart:convert';

import 'package:client_base/client_base.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

class GithubClientGateway implements GithubClientGatewayContract {
  //todo move from here
  final baseUrl = "https://api.github.com/";

  @override
  Observable<List<Repository>> getPage({
    @required int page,
    String filter = "dart",
    String sort = "stars",
  }) {
    final url = baseUrl + "search/repositories?q=$filter&sort=$sort&page=$page";

    return Observable.fromFuture(_getPage(url));
  }

  Future<List<Repository>> _getPage(String url) async {
    http.Response response = await http.get(url);

    return SearchResult.fromJson(json.decode(response.body)).items;
  }
}
