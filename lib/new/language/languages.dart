import 'package:get/get.dart';
import 'package:my_localized_app/new/language/bangla.dart';
import 'package:my_localized_app/new/language/english.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {'en_US': eng, 'bn_BD': ban};
}
