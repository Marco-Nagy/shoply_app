import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/firebase_helper/fire_store_helper.dart';
import 'package:shoply/core/Services/firebase_helper/fire_store_ref_key.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/execute_data.dart';
import 'package:shoply/features/admin/categories/data/data_source/contract/admin_categories_firebase_data_source.dart';
import 'package:shoply/features/admin/categories/data/model/multilingual_category_model_response.dart';

@Injectable(as: AdminCategoriesFirebaseDataSource)
class AdminCategoriesFirebaseDataSourceImpl
    implements AdminCategoriesFirebaseDataSource {
  final FireStoreService _fireStoreService;
  AdminCategoriesFirebaseDataSourceImpl(
    this._fireStoreService,
  );

  // New Firebase methods using DTOs
  @override
  Future<DataResult<void>> createFirebaseCategory(
      MultilingualCategoryModelResponse category) async {
    return executeData(() async {
      final docRef = _fireStoreService.fireStore
          .collection(FireStoreRefKey.categories)
          .doc();

      await docRef.set({
        ...category.toJson(),
        'id': docRef.id,
        'createdAt': DateTime.now().toIso8601String(),
      });
    });
  }

  @override
  Future<DataResult<void>> deleteFirebaseCategory(String id) async {
    return executeData(() async {
      await _fireStoreService.fireStore
          .collection(FireStoreRefKey.categories)
          .doc(id)
          .delete();
    });
  }

  @override
  Future<DataResult<List<MultilingualCategoryModelResponse>>>
      getFirebaseCategories() async {
    return executeData(() async {
      final snapshot = await _fireStoreService.fireStore
          .collection(FireStoreRefKey.categories)
          .get();
      return snapshot.docs.map((doc) {
        final data = doc.data();
        // ID handling: ensure ID is part of the map for fromJson
        final json = Map<String, dynamic>.from(data);
        json['id'] = doc.id;

        return MultilingualCategoryModelResponse.fromJson(json);
      }).toList();
    });
  }

  @override
  Future<DataResult<void>> updateFirebaseCategory(
      MultilingualCategoryModelResponse category) async {
    return executeData(() async {
      await _fireStoreService.fireStore
          .collection(FireStoreRefKey.categories)
          .doc(category.id)
          .update({
        ...category.toJson(),
        'updatedAt': DateTime.now().toIso8601String(),
      });
    });
  }
}
