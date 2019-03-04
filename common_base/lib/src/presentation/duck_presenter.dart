import 'package:rxdart/rxdart.dart';

abstract class DuckPresenter<VM, VC> {
  BehaviorSubject<VM> viewModelSubject = BehaviorSubject<VM>();
  VC view;

  void init() {}

  void setView(VC view) {
    this.view = view;
  }
}
