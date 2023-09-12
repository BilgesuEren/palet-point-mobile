import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_i18n/loaders/decoders/yaml_decode_strategy.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/theme/theme.dart';
import 'package:my_app/view/splash_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp()
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:theme,
      localizationsDelegates: [
        FlutterI18nDelegate(
          missingTranslationHandler: (key, locale) {
            print("--- Missing Key: $key, languageCode: ${locale!.languageCode}");
          },
          translationLoader: FileTranslationLoader(
              fallbackFile: 'tr',
              basePath: 'assets/flutter_i18n',
              forcedLocale: const Locale('tr'),
              decodeStrategies: [YamlDecodeStrategy()],
              useCountryCode: false),
        ),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      home: const SplashScreen(),
    );
  }
}
