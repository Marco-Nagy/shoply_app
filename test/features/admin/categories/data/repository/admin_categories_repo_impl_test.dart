import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shoply/core/app/Networking/data_result.dart';
import 'package:shoply/core/app/Networking/errors/error_handler.dart';
import 'package:shoply/features/admin/categories/data/data_source/contract/admin_categories_firebase_data_source.dart';
import 'package:shoply/features/admin/categories/data/model/multilingual_category_model_response.dart';
import 'package:shoply/features/admin/categories/data/repository/admin_categories_repo_impl.dart';
import 'package:shoply/features/admin/categories/domain/entities/multilingual_category_entity.dart';

class MockAdminCategoriesFirebaseDataSource extends Mock
    implements AdminCategoriesFirebaseDataSource {}

class FakeMultilingualCategoryModelResponse extends Fake
    implements MultilingualCategoryModelResponse {}

void main() {
  late AdminCategoriesRepoImpl repo;
  late MockAdminCategoriesFirebaseDataSource mockDataSource;

  setUpAll(() {
    registerFallbackValue(FakeMultilingualCategoryModelResponse());
  });

  setUp(() {
    mockDataSource = MockAdminCategoriesFirebaseDataSource();
    repo = AdminCategoriesRepoImpl(mockDataSource);
  });

  final tEntity = MultilingualCategoryEntity(
    id: '1',
    name: {'ar': 'أجهزة كهربائية', 'en': 'Electronics'},
    image: 'image.jpg',
  );

  final tModel = MultilingualCategoryModelResponse(
    id: '1',
    name: {'ar': 'أجهزة كهربائية', 'en': 'Electronics'},
    image: 'image.jpg',
  );

  group('getFirebaseCategories', () {
    test(
        'should return success with entities when data source call is successful',
        () async {
      // Arrange
      when(() => mockDataSource.getFirebaseCategories())
          .thenAnswer((_) async => DataResult.success([tModel]));

      // Act
      final result = await repo.getFirebaseCategories();

      // Assert
      result.when(
        success: (data) {
          expect(data.length, 1);
          expect(data.first.id, tEntity.id);
          expect(data.first.name, tEntity.name);
        },
        failure: (error) => fail('Should not return failure'),
      );
      verify(() => mockDataSource.getFirebaseCategories()).called(1);
    });

    test('should return failure when data source call fails', () async {
      // Arrange
      final tErrorHandler = ServerFailure('Error');
      when(() => mockDataSource.getFirebaseCategories())
          .thenAnswer((_) async => DataResult.failure(tErrorHandler));

      // Act
      final result = await repo.getFirebaseCategories();

      // Assert
      result.when(
        success: (data) => fail('Should not return success'),
        failure: (error) {
          expect(error.errorMsg, 'Error');
        },
      );
      verify(() => mockDataSource.getFirebaseCategories()).called(1);
    });
  });

  group('createFirebaseCategory', () {
    test('should call data source with correct model', () async {
      // Arrange
      when(() => mockDataSource.createFirebaseCategory(any()))
          .thenAnswer((_) async => DataResult.success(null));

      // Act
      await repo.createFirebaseCategory(tEntity);

      // Assert
      verify(() => mockDataSource.createFirebaseCategory(any())).called(1);
    });
  });

  group('updateFirebaseCategory', () {
    test('should call data source with correct model', () async {
      // Arrange
      when(() => mockDataSource.updateFirebaseCategory(any()))
          .thenAnswer((_) async => DataResult.success(null));

      // Act
      await repo.updateFirebaseCategory(tEntity);

      // Assert
      verify(() => mockDataSource.updateFirebaseCategory(any())).called(1);
    });
  });

  group('deleteFirebaseCategory', () {
    test('should call data source with correct id', () async {
      // Arrange
      const tId = '1';
      when(() => mockDataSource.deleteFirebaseCategory(any()))
          .thenAnswer((_) async => DataResult.success(null));

      // Act
      await repo.deleteFirebaseCategory(tId);

      // Assert
      verify(() => mockDataSource.deleteFirebaseCategory(tId)).called(1);
    });
  });
}
