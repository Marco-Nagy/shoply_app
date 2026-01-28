import 'package:shoply/features/admin/categories/domain/entities/category_entity.dart';

class MultilingualCategoryEntity {
  final String id;
  final Map<String, String> name; // { 'ar': '...', 'en': '...', 'fr': '...' }
  final String image;

  MultilingualCategoryEntity({
    required this.id,
    required this.name,
    required this.image,
  });

  /// Get name by locale (e.g., 'ar', 'en', 'fr')
  /// Falls back to Arabic if locale not found
  String getNameByLocale(String locale) {
    return name[locale] ?? name['ar'] ?? name['en'] ?? '';
  }

  /// Get Arabic name
  String get nameAr => name['ar'] ?? '';

  /// Get English name
  String get nameEn => name['en'] ?? '';

  /// Get French name
  String get nameFr => name['fr'] ?? '';

  /// Convert to regular CategoryEntity (for backward compatibility)
  /// Uses the Arabic name as the default
  CategoryEntity toCategoryEntity() {
    return CategoryEntity(
      id: id,
      name: nameAr,
      image: image,
    );
  }

  /// Create from regular CategoryEntity
  factory MultilingualCategoryEntity.fromCategoryEntity(
    CategoryEntity entity, {
    required Map<String, String> translations,
  }) {
    return MultilingualCategoryEntity(
      id: entity.id,
      name: translations,
      image: entity.image,
    );
  }
}
