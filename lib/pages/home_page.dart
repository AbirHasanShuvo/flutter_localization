import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:my_localized_app/localization/locales.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FlutterLocalization _localization;
  late String _currentLocale;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _localization = FlutterLocalization.instance;
    _currentLocale = _localization.currentLocale!.languageCode;
    print(_currentLocale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LocaleData.title.getString(context))),

      body: Center(child: Text(LocaleData.body.getString(context))),
    );
  }
}
