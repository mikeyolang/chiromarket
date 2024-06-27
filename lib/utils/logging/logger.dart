import 'package:logger/logger.dart';

class AppLoggers {
  static final Logger logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debugLogging(String message) {
    logger.d(message);
  }

  static void informationLogging(String message) {
    logger.i(message);
  }

  static void warningLogging(String message) {
    logger.w(message);
  }

  static void errorLogging(String message, [dynamic error]) {
    logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
