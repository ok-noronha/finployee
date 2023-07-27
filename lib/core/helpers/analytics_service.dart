part of 'helpers.dart';

class AnalyticsService {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static FirebaseAnalyticsObserver analyticsObserver =
      FirebaseAnalyticsObserver(analytics: analytics);

  static Future<void> sendAppEnterEvent() async {
    await analytics.logAppOpen();
  }

  static Future<void> sendAppCurrentScreen(String screenName) async {
    await analytics.setCurrentScreen(screenName: screenName);
  }

  static Future<void> sendLoginEvent(String id) async {
    await analytics.logLogin(loginMethod: 'Id : $id');
  }

  static Future<void> sendUserProperty(String id) async {
    await analytics.setUserProperty(name: 'id', value: id);
  }

  static Future<void> sendEvent(
    String name,
    Map<String, dynamic> params,
  ) async {
    await analytics
        .logEvent(name: name, parameters: params)
        .then((value) => debugPrint("EventName success"))
        .catchError((onError) {
      debugPrint("EventName catchError $onError ");
    });
    debugPrint('EVENT  succeeded');
  }
}
