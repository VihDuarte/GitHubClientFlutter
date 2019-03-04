import 'package:common_base/common_base.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class DuckStatelessContainer<VM, VC extends DuckViewContract<VM, Widget>,
    P extends DuckPresenter<VM, VC>> extends StatelessWidget {
  final VC Function(Observable<VM>) _viewProvider;
  final P _presenter;

  DuckStatelessContainer(this._viewProvider, this._presenter);

  @override
  Widget build(BuildContext context) {
    VC view = _viewProvider(_presenter.viewModelSubject);
    _presenter.setView(view);
    _presenter.init();
    return view.getView();
  }
}
