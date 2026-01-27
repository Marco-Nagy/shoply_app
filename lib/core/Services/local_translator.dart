import 'package:google_mlkit_translation/google_mlkit_translation.dart';

class LocalTranslator {
  static Future<Map<String, String>> fromArabic(String text) async {
    final arToEn = OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.arabic,
      targetLanguage: TranslateLanguage.english,
    );

    final arToFr = OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.arabic,
      targetLanguage: TranslateLanguage.french,
    );

    final en = await arToEn.translateText(text);
    final fr = await arToFr.translateText(text);

    await arToEn.close();
    await arToFr.close();

    return {
      'ar': text,
      'en': en,
      'fr': fr,
    };
  }
}
