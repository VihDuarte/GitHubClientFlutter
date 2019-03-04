import 'package:rxdart/rxdart.dart';

mixin DuckViewContract<VM, V> {
  Observable<VM> viewModelObservable;

  V getView();
}
