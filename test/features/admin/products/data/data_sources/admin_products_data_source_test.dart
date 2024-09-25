import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shoply/features/admin/products/data/data_sources/admin_products_data_source.dart';
import 'package:shoply/features/admin/products/data/data_sources/apis/admin_products_api_service.dart';
import 'package:shoply/features/admin/products/data/data_sources/apis/products_queries.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';

import '../../product_test_helper.dart';
import 'admin_products_data_source_test.mocks.dart';

// توليد mocks تلقائيًا
@GenerateMocks([AdminProductsApiService])
void main() {
  late AdminProductsDataSource dataSource;
  late MockAdminProductsApiService mockApiService;

  setUp(() {
    mockApiService = MockAdminProductsApiService();
    dataSource = AdminProductsDataSource(mockApiService);
  });

  // إعداد البيانات الوهمية المشتركة
  // final mockCategory = CategoryProductModel('category_id_1', 'Electronics');
  // final mockProduct = Product(
  //   'product_id_1',
  //   'Smartphone',
  //   999,
  //   'A high-end smartphone',
  //   ['image1.jpg', 'image2.jpg'],
  //   mockCategory,
  // );
  // final mockProductsList = GetProductsList(List.generate(
  //   7,
  //       (index) => Product(
  //     'product_id_$index',
  //     'Smartphone$index',
  //     999 * (index + 1),
  //     'A high-end smartphone',
  //     ['image1.jpg', 'image2.jpg'],
  //     mockCategory,
  //   ),
  // ));
  // final mockGetAllProductsResponse = GetAllProductsResponse(mockProductsList, null);
  //
  // const createProductEntity = CreateProductEntity(
  //   title: 'New Product',
  //   price: 500,
  //   description: 'This is a new product',
  //   categoryId: '0.0',
  //   images: [],
  // );
  // final mockCreateProductResponse = CreateProductResponse(
  //   CreateProductResponseData(AddProduct('product_id_1')),
  //   null,
  // );
  //
  // const updateProductEntity = UpdateProductEntity(
  //   id: 'product_id_1',
  //   title: 'Updated Product',
  //   price: 600,
  //   description: 'Updated description',
  //   categoryId: 1.0,
  // );
  // final mockUpdateProductResponse = UpdateProductResponse(
  //   UpdateProductResponseData(UpdateProduct('product_id_1')),
  //   null,
  // );


  group('AdminProductsDataSource Tests', () {
    test('getProductsList is called', () async {
      //! Arrange
      // call api method query using apiService ** then return list of products using GetAllProductsResponse
      when(mockApiService.getProductList(ProductsQueries().getProductsList()))
          .thenAnswer((_) async => MockProductTest.mockGetAllProductsResponse);

      //* Act
      final result = await dataSource.getProductsList();

      //? Assert
      expect(result, equals(MockProductTest.mockGetAllProductsResponse));
      verify(mockApiService.getProductList(ProductsQueries().getProductsList())).called(1);
    });

    test('createProduct is called', () async {
      // ! Arrange
      when(mockApiService.createProduct(ProductsQueries().createProduct(MockProductTest.createProductEntity)))
          .thenAnswer((_) async => MockProductTest.mockCreateProductResponse);

      // * Act
      final result = await dataSource.createProduct(MockProductTest.createProductEntity);

       // ? Assert
      expect(result, equals(MockProductTest.mockCreateProductResponse));
      verify(mockApiService.createProduct(ProductsQueries().createProduct(MockProductTest.createProductEntity))).called(1);
    });

    test('updateProduct is called', () async {
      // ! Arrange
      when(mockApiService.updateProduct(ProductsQueries().updateProduct(MockProductTest.updateProductEntity)))
          .thenAnswer((_) async => MockProductTest.mockUpdateProductResponse);

      // * Act
      final result = await dataSource.updateProduct(MockProductTest.updateProductEntity);

       // ? Assert
      expect(result, equals(MockProductTest.mockUpdateProductResponse));
      verify(mockApiService.updateProduct(ProductsQueries().updateProduct(MockProductTest.updateProductEntity))).called(1);
    });

    test('deleteProduct is called', () async {
      // ! Arrange
      when(mockApiService.deleteProduct(ProductsQueries().deleteProduct(productId: MockProductTest.productId)))
          .thenAnswer((_) async => MockProductTest.mockDeleteProductResponse);

      // * Act
      final result = await dataSource.deleteProduct(productId: MockProductTest.productId);

       // ? Assert
      expect(result, equals(MockProductTest.mockDeleteProductResponse));
      verify(mockApiService.deleteProduct(ProductsQueries().deleteProduct(productId: MockProductTest.productId))).called(1);
    });
  });
}

