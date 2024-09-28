import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shoply/core/app/Apis/api_result.dart';
import 'package:shoply/core/helpers/usecases/usecase.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/repositories/base_admin_product_repository.dart';
import 'package:shoply/features/admin/products/domain/use_cases/create_product_use_case.dart';
import 'package:shoply/features/admin/products/domain/use_cases/delete_product_use_case.dart';
import 'package:shoply/features/admin/products/domain/use_cases/get_products_list_use_case.dart';
import 'package:shoply/features/admin/products/domain/use_cases/update_product_use_case.dart';

import '../../product_test_helper.dart';
import 'admin_product_use_cases_test.mocks.dart';

@GenerateMocks([BaseAdminProductRepository])
void main() {
  late BaseAdminProductRepository repository;
  late GetProductsListUseCase getProductsListUseCase;
  late CreateProductUseCase createProductUseCase;
  late UpdateProductUseCase updateProductUseCase;
  late DeleteProductUseCase deleteProductUseCase;
  setUp(
    () {
      repository = MockBaseAdminProductRepository();
      getProductsListUseCase = GetProductsListUseCase(repository);
      createProductUseCase = CreateProductUseCase(repository);
      updateProductUseCase = UpdateProductUseCase(repository);
      deleteProductUseCase = DeleteProductUseCase(repository);
    },
  );
  test('TODO: Implement tests for get_products_list_use_case.dart', ()  async {
    // Arrange
    List<GetProductEntity> getProductsList =[MockProductTest.mockGetProductEntity];
    Future<ApiResult<List<GetProductEntity>>> successResult =
    Future.value(ApiResult.success(getProductsList));
    when(repository.getAllProducts()).thenAnswer((_) async =>  successResult);
    // Act
    final result =await   getProductsListUseCase.call(NoParams());
    // Assert
    expect(result, isA<ApiResult<List<GetProductEntity>>>());
    result.when(
      success: (data) {
        expect(data, equals(getProductsList));  // Compare the data inside the success result
      },
      failure: (error) => fail('Expected success, but got failure: $error'),
    );

    verify(repository.getAllProducts()).called(1);
  });
  test('TODO: Implement tests for create_product_use_case.dart', ()  async {
    // Arrange

    Future<ApiResult<CreateProductResponse>> successResult = Future.value(ApiResult.success( MockProductTest.mockCreateProductResponse));
    when(repository.createProduct(MockProductTest.createProductEntity)).thenAnswer((_) async => successResult);
    // Act
    final result =await   createProductUseCase.call(MockProductTest.createProductEntity);
    // Assert
    expect(result, isA<ApiResult<CreateProductResponse>>());
    result.when(
      success: (data) {
        expect(data, equals(MockProductTest.mockCreateProductResponse));  // Compare the data inside the success result
      },
      failure: (error) => fail('Expected success, but got failure: $error'),
    );

    verify(repository.createProduct(MockProductTest.createProductEntity)).called(1);
  });
  test('TODO: Implement tests for update_product_use_case.dart', ()  async {
    // Arrange

    Future<ApiResult<UpdateProductResponse>> successResult = Future.value(ApiResult.success( MockProductTest.mockUpdateProductResponse));
    when(repository.updateProduct(MockProductTest.updateProductEntity)).thenAnswer((_) async => successResult);
    // Act
    final result =await   updateProductUseCase.call(MockProductTest.updateProductEntity);
    // Assert
    expect(result, isA<ApiResult<UpdateProductResponse>>());
    result.when(
      success: (data) {
        expect(data, equals(MockProductTest.mockUpdateProductResponse));  // Compare the data inside the success result
      },
      failure: (error) => fail('Expected success, but got failure: $error'),
    );

    verify(repository.updateProduct(MockProductTest.updateProductEntity)).called(1);
  });
  test('TODO: Implement tests for delete_product_use_case.dart', ()  async {
    // Arrange

    Future<ApiResult<DeleteProductResponse>> successResult = Future.value(ApiResult.success( MockProductTest.mockDeleteProductResponse));
    when(repository.deleteProduct(MockProductTest.productId)).thenAnswer((_) async => successResult);
    // Act
    final result =await   deleteProductUseCase.call(MockProductTest.productId);
    // Assert
    expect(result, isA<ApiResult<DeleteProductResponse>>());
    result.when(
      success: (data) {
        expect(data, equals(MockProductTest.mockDeleteProductResponse));  // Compare the data inside the success result
      },
      failure: (error) => fail('Expected success, but got failure: $error'),
    );

    verify(repository.deleteProduct(MockProductTest.productId)).called(1);
  });
}
