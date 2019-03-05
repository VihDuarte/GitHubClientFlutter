/// Support for doing something awesome.
///
/// More dartdocs go here.
library client_base;

export 'package:client_base/src/data/model/repository.dart';
export 'package:client_base/src/data/model/user.dart';
export 'package:client_base/src/data/model/search_result.dart';

export 'package:client_base/src/data/gateways/githubclient_gateway_contract.dart';

export 'package:client_base/src/core/usecases/most_known_use_case.dart';

export 'package:client_base/src/core/action.dart';

export 'package:client_base/src/core/boundaries/most_known_input_boundary.dart';
export 'package:client_base/src/core/boundaries/most_known_output_boundary.dart';
export 'package:client_base/src/core/boundaries/repository_output_boundary.dart';

export 'package:client_base/src/presentation/screen/respositories/repositories_screen_dispatcher.dart';
export 'package:client_base/src/presentation/screen/respositories/repositories_screen_presenter.dart';
export 'package:client_base/src/presentation/screen/respositories/repositories_screen_view_contract.dart';
export 'package:client_base/src/presentation/screen/respositories/repositories_screen_view_model.dart';

export 'package:client_base/src/presentation/components/repositorylistitem/repository_list_item_presenter.dart';
export 'package:client_base/src/presentation/components/repositorylistitem/repository_list_item_view_contract.dart';
export 'package:client_base/src/presentation/components/repositorylistitem/repository_list_item_view_model.dart';

export 'package:client_base/src/presentation/client_navigator_contract.dart';

export 'package:common_base/common_base.dart';

