import 'package:flutter/material.dart';

class AppLifeCycleManager extends StatefulWidget {
  final Widget child;

  AppLifeCycleManager(this.child);

  @override
  AppLifeCycleManagerState createState() => AppLifeCycleManagerState();
}

class AppLifeCycleManagerState extends State<AppLifeCycleManager>
    with WidgetsBindingObserver {

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        print("resumed");
        break;
      case AppLifecycleState.detached:
        print("detached");
        break;
      case AppLifecycleState.inactive:
        print("inactive");
        break;
      case AppLifecycleState.paused:
        print("paused");
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }
}
