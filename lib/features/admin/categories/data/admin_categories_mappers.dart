import 'package:shoply/features/admin/categories/data/model/multilingual_category_model_response.dart';
import 'package:shoply/features/admin/categories/domain/entities/multilingual_category_entity.dart';

class AdminCategoriesMappers {
  static MultilingualCategoryModelResponse fromEntityToModel(
      MultilingualCategoryEntity entity) {
    return MultilingualCategoryModelResponse.fromEntity(entity);
  }

  static MultilingualCategoryEntity fromModelToEntity(
      MultilingualCategoryModelResponse model) {
    return model.toEntity();
  }
  static List<MultilingualCategoryEntity> fromModelsToEntities(
      List<MultilingualCategoryModelResponse> models) {
    return models.map((model) => fromModelToEntity(model)).toList();
  }
}
