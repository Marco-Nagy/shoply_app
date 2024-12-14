import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/features/admin/products/data/Mappers/create_product_mapper.dart';
import 'package:shoply/features/admin/products/data/Mappers/delete_product_mapper.dart';
import 'package:shoply/features/admin/products/data/Mappers/update_product_mapper.dart';
import 'package:shoply/features/admin/products/data/data_sources/admin_products_data_source.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/data/repository/admin_product_repository.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';

import '../../product_test_helper.dart';
import 'admin_product_repository_test.mocks.dart';

@GenerateMocks([AdminProductsDataSource])
void main() {
  late AdminProductRepository repository;
  late MockAdminProductsDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockAdminProductsDataSource();
    repository = AdminProductRepository(mockDataSource);
  });

  group('AdminProductRepository Tests', () {
    group(
      'Get Products List is called',
      () {
        test('should return list of products on success', () async {
          // Arrange

          when(mockDataSource.getProductsList()).thenAnswer(
              (_) async => MockProductTest.mockGetAllProductsResponse);

          // Act
          final result = await repository.getAllProducts();

          // Assert
          expect(result, isA<ApiResult<List<GetProductEntity>>>());
          result.when(
            success: (products) {
              expect(products, isNotEmpty);
              expect(products.length, 7);
            },
            failure: (error) =>
                fail('Expected success, but got failure: $error'),
          );
        });

        test('should return failure when API returns an error', () async {
          // Arrange

          final mockErrorResponse = GetAllProductsResponse(
            null,
            [MockProductTest.errorModel],
          );

          when(mockDataSource.getProductsList())
              .thenAnswer((_) async => mockErrorResponse);

          // Act
          final result = await repository.getAllProducts();

          // Assert
          result.when(
            success: (_) => fail('Expected failure, but got success'),
            failure: (error) {
              expect(error, equals(MockProductTest.errorMessage));
            },
          );
        });

        test('should return failure on exception thrown', () async {
          // Arrange
          when(mockDataSource.getProductsList())
              .thenThrow(Exception('Network error'));

          // Act
          final result = await repository.getAllProducts();

          // Assert
          result.when(
            success: (_) => fail('Expected failure, but got success'),
            failure: (error) {
              expect(error, equals('Exception: Network error'));
            },
          );
        });
      },
    );

    group('Create Product is called', () {
      test('should return CreateProductResponse on success', () async {
        // Arrange

        when(mockDataSource
                .createProduct(MockProductTest.createProductEntity))
            .thenAnswer(
                (_) async => MockProductTest.mockCreateProductResponse);

        // Act
        final result = await repository
            .createProduct(MockProductTest.createProductEntity);

        // Assert
        expect(result, isA<ApiResult<CreateProductResponse>>());
        result.when(
            success: (product) {
              expect(product.data, isNotNull);
              expect(CreateProductMapper.toEntity(product), isNotNull);
            },
            failure: (errorHandler) =>
                fail('Expected success, but got failure: $errorHandler'));
      });
      test('should return failure when API returns an error', () async {
        // Arrange

        when(mockDataSource
                .createProduct(MockProductTest.createProductEntity))
            .thenAnswer(
                (_) async => MockProductTest.mockCreateProductResponse);

        // Act
        final result = await repository
            .createProduct(MockProductTest.createProductEntity);

        // Assert
        expect(result, isA<ApiResult<CreateProductResponse>>());
        result.when(
            success: (product) => fail('Expected failure, but got success'),
            failure: (errorHandler) =>
                fail('Expected success, but got failure: $errorHandler'));
      });
    });
    group('Update Product is called', () {
      test('should return Update Product Response on success', () async {
        // Arrange

        when(mockDataSource
                .updateProduct(MockProductTest.updateProductEntity))
            .thenAnswer(
                (_) async => MockProductTest.mockUpdateProductResponse);

        // Act
        final result = await repository
            .updateProduct(MockProductTest.updateProductEntity);

        // Assert
        expect(result, isA<ApiResult<UpdateProductResponse>>());
        result.when(
            success: (product) {
              expect(product.data, isNotNull);
              expect(UpdateProductMapper.toEntity(product), isNotNull);
            },
            failure: (errorHandler) =>
                fail('Expected success, but got failure: $errorHandler'));
      });
      test('should return failure when API returns an error', () async {
        // Arrange

        when(mockDataSource
                .updateProduct(MockProductTest.updateProductEntity))
            .thenAnswer(
                (_) async => MockProductTest.mockUpdateProductResponse);

        // Act
        final result = await repository
            .updateProduct(MockProductTest.updateProductEntity);

        // Assert
        expect(result, isA<ApiResult<UpdateProductResponse>>());
        result.when(
            success: (product) => fail('Expected failure, but got success'),
            failure: (errorHandler) =>
                fail('Expected success, but got failure: $errorHandler'));
      });
    });
    group('Delete Product is called', () {
      test('should return Update Product Response on success', () async {
        // Arrange

        when(mockDataSource
                .deleteProduct(productId: MockProductTest.productId))
            .thenAnswer(
                (_) async => MockProductTest.mockDeleteProductResponse);

        // Act
        final result = await repository
            .deleteProduct(MockProductTest.productId);

        // Assert
        expect(result, isA<ApiResult<DeleteProductResponse>>());
        result.when(
            success: (product) {
              expect(product.data, isNotNull);
              expect(DeleteProductMapper.toEntity(product), isNotNull);
            },
            failure: (errorHandler) =>
                fail('Expected success, but got failure: $errorHandler'));
      });
      test('should return failure when API returns an error', () async {
        // Arrange

        when(mockDataSource
                .deleteProduct(productId: MockProductTest.productId))
            .thenAnswer(
                (_) async => MockProductTest.mockDeleteProductResponse);

        // Act
        final result = await repository
            .deleteProduct( MockProductTest.productId);

        // Assert
        expect(result, isA<ApiResult<DeleteProductResponse>>());
        result.when(
            success: (product) => fail('Expected failure, but got success'),
            failure: (errorHandler) =>
                fail('Expected success, but got failure: $errorHandler'));
      });
    });
  });
}
