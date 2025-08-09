import '../wtw_translations.dart';
import 'wtw_me_mne_translations.dart';
import 'wtw_en_us_translations.dart';

class WTWTranslationCatalog extends WTWTranslations {

  @override
  Map<String, Map<String, String>> get keys => {
    'me_MNE': WTWMeMneTranslations().keys['me_MNE']!,
    'en_US':  WTWEnUsTranslations().keys['en_US']!,
  };

}