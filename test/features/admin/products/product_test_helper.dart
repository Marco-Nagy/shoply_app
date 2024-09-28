import 'package:shoply/core/app/apis/errors/error_model.dart';
import 'package:shoply/features/admin/products/data/model/create_product/create_product_response.dart';
import 'package:shoply/features/admin/products/data/model/delete_category/delete_product.dart';
import 'package:shoply/features/admin/products/data/model/get_products_list/get_all_products.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_response.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';

class MockProductTest {
  static CategoryProductModel mockCategory =
      CategoryProductModel('category_id_1', 'Electronics');
  static Product mockProduct = Product(
    'product_id_1',
    'Smartphone',
    999,
    'A high-end smartphone',
    ['image1.jpg', 'image2.jpg'],
    CategoryProductModel('category_id_1', 'Electronics'),
  );
  static GetProductsList mockProductsList = GetProductsList(List.generate(
    7,
    (index) => Product(
      'product_id_$index',
      'Smartphone$index',
      999 * (index + 1),
      'A high-end smartphone',
      ['image1.jpg', 'image2.jpg'],
      CategoryProductModel('category_id_1', 'Electronics'),
    ),
  ));
  static GetAllProductsResponse mockGetAllProductsResponse =
      GetAllProductsResponse(mockProductsList, null);
  static CategoryProductEntity mockCategoryProductEntity =
      const CategoryProductEntity(id: 'category_id_1', name: 'Electronics');
  static GetProductEntity mockGetProductEntity = GetProductEntity(
      id: 'product_id_1',
      title: 'Smartphone',
      price: 999,
      description: 'A high-end smartphone',
      images: [],
      category: mockCategoryProductEntity);
  static CreateProductEntity createProductEntity = const CreateProductEntity(
    title: 'New Product',
    price: 500,
    description: 'This is a new product',
    categoryId: '0.0',
    images: [],
  );
  static CreateProductResponse mockCreateProductResponse =
      CreateProductResponse(
    CreateProductResponseData(AddProduct('product_id_1')),
    null,
  );

  static UpdateProductEntity updateProductEntity = const UpdateProductEntity(
    id: 'product_id_2',
    title: 'Updated Product',
    price: 600,
    description: 'Updated description',
    categoryId: 1.0,
  );
  static UpdateProductResponse mockUpdateProductResponse =
      UpdateProductResponse(
    UpdateProductResponseData(UpdateProduct('product_id_1')),
    null,
  );
  static String productId = 'product_id_1';
  static DeleteProductResponse mockDeleteProductResponse =
      DeleteProductResponse(
    DeleteProduct(true),
    null,
  );

  static String errorMessage = 'Error occurred';
  static ErrorModel errorModel = ErrorModel(errorMessage, [], [],
      ErrorsExtensions('', ErrorsExtensionsOriginalError('', 0)));
}
