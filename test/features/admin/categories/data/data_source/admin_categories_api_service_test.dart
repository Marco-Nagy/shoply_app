import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shoply/features/admin/categories/data/data_source/admin_categories_api_service.dart';
import 'package:shoply/features/admin/categories/data/data_source/admin_categries_data_source.dart';

import '../../mock_category_test.dart';
import 'admin_categories_api_service_test.mocks.dart';

@GenerateMocks([AdminCategoriesApiService])
void main() {
  late AdminCategoriesDataSource dataSource;
  late MockAdminCategoriesApiService mockApiService;
  setUp(() {
    mockApiService = MockAdminCategoriesApiService();
    dataSource = AdminCategoriesDataSource(mockApiService);
  });

  group(
    "test Apis calls get all categories ",
    () {
      test("getAllCategories is called Successfully", () async {
        //! Arrange
        // call api method query using apiService ** then return list of products using GetAllProductsResponse
        when(mockApiService.getAllCategories(any)).thenAnswer(
            (_) async => MockCategoryTest.mockGetAllCategoriesResponse);
        //* Act
        final result = await dataSource.getAllCategories();
        //? Assert
        expect(result, equals(MockCategoryTest.mockGetAllCategoriesResponse));
        verify(mockApiService.getAllCategories(any)).called(1);
      });
      test("getAllCategories is called errors", () async {
        //! Arrange
        // call api method query using apiService ** then return list of products using GetAllProductsResponse
        when(mockApiService.getAllCategories(any)).thenAnswer(
            (_) async => MockCategoryTest.mockGetAllCategoriesResponseError);
        //* Act
        final result = await dataSource.getAllCategories();
        //? Assert
        expect(
            result, equals(MockCategoryTest.mockGetAllCategoriesResponseError));
        verify(mockApiService.getAllCategories(any)).called(1);
      });
    },
  );
  group("test Apis calls create category ", () {
    test("createCategory is called Successfully", () async {
      //! Arrange
      // call api method query using apiService ** then return list of products using GetAllProductsResponse
      when(mockApiService.createCategory(any))
          .thenAnswer((_) async => MockCategoryTest.mockCreateCategoryResponse);
      //* Act
      final result = await dataSource
          .createCategory(MockCategoryTest.mockCreateCategoryRequest);
      //? Assert
      expect(result, equals(MockCategoryTest.mockCreateCategoryResponse));
      verify(mockApiService.createCategory(any)).called(1);
    });
    test("createCategory is called errors", () async {
      //! Arrange
      // call api method query using apiService ** then return list of products using GetAllProductsResponse
      when(mockApiService.createCategory(any)).thenAnswer(
        (_) async =>
            MockCategoryTest.mockCreateCategoryResponseError,
      );
      //* Act
      final result = await dataSource
          .createCategory(MockCategoryTest.mockCreateCategoryRequest);
      //? Assert
      expect(result, equals(MockCategoryTest.mockCreateCategoryResponseError));
      verify(mockApiService.createCategory(any)).called(1);
    });
  });
  group("test Apis calls update category ", () {
    test("updateCategory is called Successfully", () async {
      //! Arrange
      // call api method query using apiService ** then return list of products using GetAllProductsResponse
      when(mockApiService.updateCategory(any))
          .thenAnswer((_) async => MockCategoryTest.mockUpdateCategoryResponse);
      //* Act
      final results = await dataSource
          .updateCategory(MockCategoryTest.mockUpdateCategoryRequest);
      //? Assert
      expect(results, equals(MockCategoryTest.mockUpdateCategoryResponse));
      verify(mockApiService.updateCategory(any)).called(1);
    });


    test("updateCategory is called errors", () async {
      //! Arrange
      // call api method query using apiService ** then return list of products using GetAllProductsResponse
      when(mockApiService.updateCategory(any)).thenAnswer(
        (_) async =>
            MockCategoryTest.mockUpdateCategoryResponseError);
      //* Act
      final results = await dataSource
          .updateCategory(MockCategoryTest.mockUpdateCategoryRequest);
      //? Assert
      expect(results, equals(MockCategoryTest.mockUpdateCategoryResponseError));
      verify(mockApiService.updateCategory(any)).called(1);
    });

  });
  group("test Apis calls delete category ", () {
    test("deleteCategory is called Successfully", () async {
      //! Arrange
      // call api method query using apiService ** then return list of products using GetAllProductsResponse
      when(mockApiService.deleteCategory(any))
          .thenAnswer((_) async => MockCategoryTest.mockDeleteCategoryResponse);
      //* Act
      final results = await dataSource.deleteCategory(MockCategoryTest.mockCategoryId);
      //? Assert
      expect(results, equals(MockCategoryTest.mockDeleteCategoryResponse));
      verify(mockApiService.deleteCategory(any)).called(1);
    });
    test("deleteCategory is called errors", () async {
      //! Arrange
      // call api method query using apiService ** then return list of products using GetAllProductsResponse
      when(mockApiService.deleteCategory(any)).thenAnswer(
        (_) async =>
            MockCategoryTest.mockDeleteCategoryResponseError);
      //* Act
      final results = await dataSource.deleteCategory(MockCategoryTest.mockCategoryId);
      //? Assert
      expect(results, equals(MockCategoryTest.mockDeleteCategoryResponseError));
      verify(mockApiService.deleteCategory(any)).called(1);
    });
  });
}
