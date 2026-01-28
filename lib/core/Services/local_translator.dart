import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:shoply/core/Services/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/Services/shared_preference/shared_preference_helper.dart';

class LocalTranslator {
  /// Get current app language code
  static String get _currentLanguage =>
      SharedPrefHelper().getString(key: SharedPrefKeys.language) ?? 'en';

  /// Get translation from a multilingual map based on current app language
  static String translate(Map<String, String>? multilingualMap) {
    if (multilingualMap == null || multilingualMap.isEmpty) return '';

    return multilingualMap[_currentLanguage] ??
        multilingualMap['en'] ??
        multilingualMap['ar'] ??
        '';
  }

  /// Singleton instances for reuse
  static OnDeviceTranslator? _arToEn;
  static OnDeviceTranslator? _enToAr;
  static OnDeviceTranslator? _arToFr;
  static OnDeviceTranslator? _frToAr;
  static OnDeviceTranslator? _enToFr;
  static OnDeviceTranslator? _frToEn;

  /// Initialize all translators
  static Future<void> initialize() async {
    _arToEn ??= OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.arabic,
      targetLanguage: TranslateLanguage.english,
    );
    _enToAr ??= OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.english,
      targetLanguage: TranslateLanguage.arabic,
    );
    _arToFr ??= OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.arabic,
      targetLanguage: TranslateLanguage.french,
    );
    _frToAr ??= OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.french,
      targetLanguage: TranslateLanguage.arabic,
    );
    _enToFr ??= OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.english,
      targetLanguage: TranslateLanguage.french,
    );
    _frToEn ??= OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.french,
      targetLanguage: TranslateLanguage.english,
    );
  }

  /// Translate from the current application language to all other supported languages
  static Future<Map<String, String>> translateFromCurrentLanguage(
      String text) async {
    switch (_currentLanguage) {
      case 'ar':
        return fromArabic(text);
      case 'fr':
        return fromFrench(text);
      case 'en':
      default:
        return fromEnglish(text);
    }
  }

  /// Generic method to translate from a source language to all others
  static Future<Map<String, String>> _translateToAll({
    required String text,
    required String sourceLangCode,
    required OnDeviceTranslator? translator1,
    required String targetLangCode1,
    required OnDeviceTranslator? translator2,
    required String targetLangCode2,
  }) async {
    try {
      // Ensure specific translators are initialized
      if (translator1 == null || translator2 == null) {
        await initialize();
      }

      // Re-fetch from initialized pool to be safe
      final t1 = _getTranslator(sourceLangCode, targetLangCode1);
      final t2 = _getTranslator(sourceLangCode, targetLangCode2);

      if (t1 == null || t2 == null) {
        throw Exception('Translators not initialized');
      }

      // Translate in parallel
      final results = await Future.wait([
        t1.translateText(text),
        t2.translateText(text),
      ]);

      return {
        sourceLangCode: text,
        targetLangCode1: results[0],
        targetLangCode2: results[1],
      };
    } catch (e) {
      // Fallback: original text for all languages
      return {
        'ar': text,
        'en': text,
        'fr': text,
      };
    }
  }

  /// Helper to get translator from the pool
  static OnDeviceTranslator? _getTranslator(String source, String target) {
    if (source == 'ar' && target == 'en') return _arToEn;
    if (source == 'en' && target == 'ar') return _enToAr;
    if (source == 'ar' && target == 'fr') return _arToFr;
    if (source == 'fr' && target == 'ar') return _frToAr;
    if (source == 'en' && target == 'fr') return _enToFr;
    if (source == 'fr' && target == 'en') return _frToEn;
    return null;
  }

  /// Translate Arabic text to English and French
  static Future<Map<String, String>> fromArabic(String text) async {
    return _translateToAll(
      text: text,
      sourceLangCode: 'ar',
      targetLangCode1: 'en',
      translator1: _arToEn,
      targetLangCode2: 'fr',
      translator2: _arToFr,
    );
  }

  /// Translate English text to Arabic and French
  static Future<Map<String, String>> fromEnglish(String text) async {
    return _translateToAll(
      text: text,
      sourceLangCode: 'en',
      targetLangCode1: 'ar',
      translator1: _enToAr,
      targetLangCode2: 'fr',
      translator2: _enToFr,
    );
  }

  /// Translate French text to Arabic and English
  static Future<Map<String, String>> fromFrench(String text) async {
    return _translateToAll(
      text: text,
      sourceLangCode: 'fr',
      targetLangCode1: 'ar',
      translator1: _frToAr,
      targetLangCode2: 'en',
      translator2: _frToEn,
    );
  }

  /// Dispose all translators
  static Future<void> dispose() async {
    await _arToEn?.close();
    await _enToAr?.close();
    await _arToFr?.close();
    await _frToAr?.close();
    await _enToFr?.close();
    await _frToEn?.close();

    _arToEn = null;
    _enToAr = null;
    _arToFr = null;
    _frToAr = null;
    _enToFr = null;
    _frToEn = null;
  }
}
