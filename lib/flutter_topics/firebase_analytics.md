# Firebase Analytics

Analytics are events logged from your application that maps to actions the user performs in your app

## Why to use

- it is important to understand user behaviour at the current moment
- analytics can help to boost wanted user behaviour

## What can be tracked

- Demographic - who your users are
- Retention - how regularly they use the app
- Engagement - how much time they spend there
- Revenue - how much money they spend in the app
- Detailed and custom metrics

## How to use analytics

- define important actions
- add events to track them

### 1. create analytics_service.dart

```dart
class AnalyticsService {
    final FirebaseAnalytics _analytics = FirebaseAnalytics();
    FirebaseAnalyticsObserver firebaseAnalyticsObserver() => FirebaseAnalyticsObserver(analytics: _analytics); 
}
```

### 2. register the service with getIt or riverpod

### 3. track route transition

```dart
MaterialApp(
    home: MyAppHome(),
    navigatorObservers: [
        // used getIt locator here    
        locator<AnalyticsService>().getAnalyticsObserver()
    ],
);
```
