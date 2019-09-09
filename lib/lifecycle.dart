import 'package:flutter/widgets.dart';

class Lifecycle extends StatefulWidget {

  final Widget child;
  final Function onInitState;
  final Function onDispose;
  final Function onResumed;
  final Function onInactive;
  final Function onPaused;
  final Function onSuspended;

  const Lifecycle({Key key,
    this.child,
    this.onInitState,
    this.onDispose,
    this.onResumed,
    this.onInactive,
    this.onPaused,
    this.onSuspended
  }) : super(key: key);

  @override
  _LifecycleState createState() => _LifecycleState();
}

class _LifecycleState extends State<Lifecycle> with WidgetsBindingObserver {

  @override
  Widget build(final BuildContext context) => widget.child ?? widget;

  @override
  void initState() {
    super.initState();
    if (widget.onInitState != null) {
      widget.onInitState();
    }
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(final AppLifecycleState state) {
    assert(state != null);
    switch (state) {
      case AppLifecycleState.inactive:
        widget.onInactive?.call();
        break;
      case AppLifecycleState.paused:
        widget.onPaused?.call();
        break;
      case AppLifecycleState.resumed:
        widget.onResumed?.call();
        break;
      case AppLifecycleState.suspending:
        widget.onSuspended?.call();
        break;
    }

    @override
    void dispose() {
      super.dispose();
      if (widget.onDispose != null) {
        widget.onDispose();
      }
      WidgetsBinding.instance.removeObserver(this);
    }
  }
}