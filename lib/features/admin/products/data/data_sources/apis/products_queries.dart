import 'package:shoply/features/admin/products/data/model/create_product/create_product_request.dart';
import 'package:shoply/features/admin/products/data/model/update_product/update_product_request.dart';
import 'package:shoply/features/admin/products/domain/entities/create_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/get_product_entity.dart';
import 'package:shoply/features/admin/products/domain/entities/update_product_entity.dart';

import '../base_products_data_source.dart';

class ProductsQueries implements BaseProductsDataSource{
  factory ProductsQueries() => _instance;
  ProductsQueries._();
  static final ProductsQueries _instance = ProductsQueries._();



  @override
  Map<String, dynamic> createProduct(CreateProductEntity body) {
    return {
      'query': r'''mutation createProduct(
          $title: String!
          $price: Float!
          $description: String!
          $categoryId: Float!
          $imagesList: [String!]!) {
        addProduct(
            data: {
              title: $title,
              price: $price,
              description: $description,
              categoryId: $categoryId,
              images: $imagesList,
            }
        ) {
          id
        }
      }''',
      'variables': {
        'title': body.title,
        'price': body.price,
        'description': body.description,
        'categoryId': double.parse(body.categoryId.toString()),
        'imagesList': body.images,
      }
    };
  }


  @override
  Map<String, dynamic> deleteProduct({required String productId})  {
    return {
      'query': r'''mutation DeleteProduct($id: ID!) {
        deleteProduct(id: $id) 
    
      }''',
      'variables': {
        'id': productId,
      }
    };
  }

  @override
  Map<String, dynamic> getProductsList() {
    return {
      'query': '''{
       products{
         id
         title
         price
         description
         images
         category{
           id
           name
         }
       }
     }''',
    };
  }

  @override
  Map<String, dynamic> updateProduct(UpdateProductEntity body) {
    return {
      'query': r'''mutation updateProduct($id: ID!,
          $title: String!
          $price: Float!
          $description: String!
          $categoryId: Float!
          $imagesList: [String!]!) {
        updateProduct(
            id: $id,
            changes: {
              title: $title,
              price: $price,
              description: $description,
              categoryId: $categoryId,
              images: $imagesList,
            }
        ) {
          id
        }
      }''',
      'variables': {
        'id': body.id,
        'title': body.title,
        'price': body.price,
        'description': body.description,
        'categoryId': body.categoryId,
        'imagesList': body.images,
      }
    };
  }
  Map<String, dynamic> getProductDetails({required String productId}) {
    return {
      'query': '''{
        product(id: $productId) {
          id
          title
          price
          description
          images
          category{
            id
            name
          }
        }
      }''',
      'variables': {
        'productId': productId,
      }
    };
  }


}
