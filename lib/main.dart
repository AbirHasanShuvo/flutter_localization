import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:my_localized_app/localization/locales.dart';
import 'package:my_localized_app/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Always good practice
  await FlutterLocalization.instance.ensureInitialized(); // 🔥 Required
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    configureLocalization();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      home: HomePage(),
    );
  }

  void configureLocalization() {
    localization.init(mapLocales: LOCALES, initLanguageCode: 'en');
    localization.onTranslatedLanguage = onTranslatedLanguage;
  }

  void onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }
}
