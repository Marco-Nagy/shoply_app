import 'package:shoply/core/helpers/shared_preference/shared_pref_keys.dart';
import 'package:shoply/core/helpers/shared_preference/shared_preference_helper.dart';

class FontFamilyHelper {
  FontFamilyHelper._();
  static const String cairoAr = 'Cairo';

  static const String poppinsEn = 'Poppins';
static String getLocalFontFamily(){
    final currentLanguage =
        SharedPrefHelper().getString(key: SharedPrefKeys.language);
    switch (currentLanguage) {
    case 'ar':
      return FontFamilyHelper.cairoAr;
    case 'en':
      return FontFamilyHelper.poppinsEn;
    default:
      return FontFamilyHelper.poppinsEn;
  }
}
}
