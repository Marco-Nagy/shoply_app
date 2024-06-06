class FontFamilyHelper {
  FontFamilyHelper._();
  static const String cairoAr = 'Cairo';

  static const String poppinsEn = 'Poppins';
static String getLocalFontFamily(){
  const currentLanguage = 'ar';
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
