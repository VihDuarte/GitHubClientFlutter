import 'package:common_base/common_base.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class DuckStatefulContainer<VM, VC extends DuckViewContract<VM, Widget>,
    P extends DuckPresenter<VM, VC>> extends StatefulWidget {
  final VC Function(Observable<VM>) _viewProvider;
  final P _presenter;

  DuckStatefulContainer(this._viewProvider, this._presenter);

  @override
  _DuckContainerState<VM, VC, P> createState() =>
      _DuckContainerState<VM, VC, P>(_presenter, _viewProvider);
}

class _DuckContainerState<VM, VC extends DuckViewContract<VM, Widget>,
    P extends DuckPresenter<VM, VC>> extends State<DuckStatefulContainer> {
  final P _presenter;
  final VC Function(Observable<VM>) _viewProvider;

  _DuckContainerState(this._presenter, this._viewProvider);

  @override
  void initState() {
    super.initState();
    _presenter.init();
  }

  @override
  Widget build(BuildContext context) {
    VC view = _viewProvider(_presenter.viewModelSubject);
    _presenter.setView(view);
    return view.getView();
  }
}
