# Flutter App Lifecycle

App lifecycle - states that an app can be in

[WidgetsBindingObserver](https://docs-flutter-io.firebaseapp.com/flutter/widgets/WidgetsBindingObserver-class.html) - a mechanism to observe the lifecycle state from the widgets layer

## App Lifecycle states

Represented by [AppLifecycleState](https://docs-flutter-io.firebaseapp.com/flutter/dart-ui/AppLifecycleState-class.html) enum

- __Detached__ - the app is still hosted on a flutter engine but is detached from any host view. In other words engine is running without a view. It can be either in the progress of attaching a view when the engine was first initialized, __or__ after the view being destroyed due to `Navigator.pop()` method
- __Inactive__ - the app is in an inactive state and is not receiving user input. E.g., a phone call. Apps in this state should assume that they may be paused at any time
- __Paused__ - the app is not currently visible to the user, not responding to user input, and running in the background
- __Resumed__ - the app is visible and responds to the user input
