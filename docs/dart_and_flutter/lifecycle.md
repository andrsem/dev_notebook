# Flutter App Lifecycle

App lifecycle - states that an app can be in

[WidgetsBindingObserver](https://docs-flutter-io.firebaseapp.com/flutter/widgets/WidgetsBindingObserver-class.html) - a mechanism to observe the lifecycle state from the widgets layer

## App Lifecycle states

Represented by [AppLifecycleState](https://docs-flutter-io.firebaseapp.com/flutter/dart-ui/AppLifecycleState-class.html) enum

- __Detached__ - the app is still hosted on a flutter engine but is detached from any host view. In other words engine is running without a view. It can be either in the progress of attaching a view when the engine was first initialized, __or__ after the view being destroyed due to `Navigator.pop()` method
- __Inactive__ - the app is in an inactive state and is not receiving user input. E.g., a phone call. Apps in this state should assume that they may be paused at any time
- __Paused__ - the app is not currently visible to the user, not responding to user input, and running in the background
- __Resumed__ - the app is visible and responds to the user input

## StatefulWidget Lifecycle

When Flutter builds a `StatefulWidget`, it creates a state object. This object holds all the mutable states for this widget. StatefulWidget and State are separate classes for performance reasons. State objects live long. StatefulWidgets are thrown away and rebuilt whenever configuration changes. As State isn't thrown away it can constantly be rebuilding its Widget in response to data changes or when required.

The concept of state is defined by the following things:

1. The data used by the widget might change
2. The data can't be read synchronously when the widget is built. (All state must be initiated by the time the `build` method is called)

### Lifecycle events of a StatefulWidget

<img src="/docs/images/stateful_widget_events.png" width="600">

1. `createState()` is immediately called, when Flutter is instructed to build a StatefulWidget. It will return an instance if a State associated with it
2. `mounted is true` when `createState()` creates the state class, a [BuildContext](/docs/dart_and_flutter/rendering_and_build_context.md#buildcontext) is assigned to that state. All the widgets have a `bool this.mounted` property. It turns true when the `BuildContext` is assigned. It is an error to call `setState()` when a widget is `unmounted`. When a method calls `setState()` but it isn't clear when or how often that method will be called we can use `if (mounted){}` to make sure the State exists before calling `setState()`
3. `initState()` is the first method called when the widget is created and it is called once and only once.
4. `didChangeDependencies()` is called immediately after `initState()` on the first time the widget is built as well when a dependency of this State object changes. E.g, it is a good idea to override this method, when we need to do some expensive work like network fetching. Such kind of work would be too expensive to do for every build.
5. `build()` this method is called quite often. It must return a Widget
6. `didUpdateWidget()` called whenever the parent Widget did a change. The framework always calls `build` after calling `didUpdateWidget`. If the state's build method depends on an object that can itself change state, for example, a ChangeNotifier or Stream, then be sure to subscribe and unsubscribe properly:

    - in `initState` subscribe to the object
    - in `didUpdateWidget` unsubscribe from the old object and subscribe to the new one if the updated widget configuration requires replacing the object
    - in `dispose` unsubscribe from the object

7. `setState()` is used to notify the framework that data has changed, and the widget at this BuildContext should be rebuilt. It is an error to call this method after the framework calls `dispose()`. Calling `setState` marks this widget as dirty and schedules it to be rebuilt the next time your app needs to update the screen. If you forget to call `setState` when modifying the internal state of a widget, the framework won’t know your widget is dirty and might not call the widget’s `build()` function, which means the user interface might not update to reflect the changed state.
8. `deactivate()` is called when the state is removed from the tree, but it might be reinserted before the current frame change is finished.
9. `dispose()` is called when the the object and its State needs to be removed permanently and will never build again. Is a good idea to unsubscribe and cancel animations, streams, etc. here
10. `mounted is false` after the framework calls `dispose()` the State object becomes  `!mounted`. After that, the framework will never ask the State object to build again. It is an error to call `setState()` when `!mounted`
