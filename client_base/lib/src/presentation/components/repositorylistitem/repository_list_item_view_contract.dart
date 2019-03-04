import 'package:common_base/common_base.dart';
import 'package:client_base/src/presentation/components/repositorylistitem/repository_list_item_view_model.dart';

mixin RepositoryListItemViewContract<T>
    on DuckViewContract<RepositoryListItemViewModel, T> {}
