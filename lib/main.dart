import 'package:e_commerce_app/src/material_app_home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

import 'core/dependency_injection/service_locator.dart';

Logger _log = Logger('main.dart');

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLoactor();
  if (kReleaseMode) {
    // Don't log anything below warnings in production.
    Logger.root.level = Level.WARNING;
  }
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: '
        '${record.loggerName}: '
        '${record.message}');
  });

  _log.info('App started in production mode 🚀');

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  _log.info('Going Portrait mode screen 👹');

  runApp(const MaterialAppHome());
}
