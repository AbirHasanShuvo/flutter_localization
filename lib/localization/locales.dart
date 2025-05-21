import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES = [
  MapLocale('en', LocaleData.en),
  MapLocale('bn', LocaleData.bn),
];

mixin LocaleData {
  static const String title = 'title';
  static const String body = 'body';

  static const Map<String, dynamic> en = {
    title: 'Localization',
    body: 'This is a test',
  };

  static const Map<String, dynamic> bn = {
    title: 'স্থানীয়করণ', // Localization
    body: 'এটি একটি পরীক্ষা', // This is a test
  };
}
