part of 'utils.dart';

class Debug {
  Debug._internal();

  factory Debug() => Debug._internal();

  static bool enabled = true;

  static void log(dynamic message) {
    if (enabled) {
      debugPrint('[DEBUG] $message');
    }
  }

  static void d(dynamic message, {String tag = 'DEBUG'}) {
    if (enabled) {
      developer.log(message.toString(), name: tag);
    }
  }
}
