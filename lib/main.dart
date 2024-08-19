import 'package:flutter/material.dart';
import 'package:happ_flutter/src/app.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sentry_logging/sentry_logging.dart';

void main() async {
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://1a2de3250d8eed810c8bc173eea49cc9@o1371476.ingest.us.sentry.io/4507803218411521';
      options.tracesSampleRate = 1.0;
      options.profilesSampleRate = 1.0;
      options.addIntegration(LoggingIntegration());
      //options.enableTimeToFullDisplayTracing = true; // TODO need to add `reportFullyDisplayed()` to views
    },
    appRunner: () => runApp(DefaultAssetBundle(
      bundle: SentryAssetBundle(),
      child: const MyApp(),
    )),
  );
}
